#!/usr/bin/env bash
# setup-portals.sh
# Sets up xdg-desktop-portal configs for niri and sway
# Safe to re-run — backs up existing files before overwriting

set -euo pipefail

PORTAL_DIR="$HOME/.config/xdg-desktop-portal"
BACKUP_DIR="$PORTAL_DIR/backups/$(date +%Y%m%d_%H%M%S)"

mkdir -p "$PORTAL_DIR"

# ── Backup any existing configs ────────────────────────────────────────────────
existing=("portals.conf" "niri-portals.conf" "sway-portals.conf")
needs_backup=false

for f in "${existing[@]}"; do
    [[ -f "$PORTAL_DIR/$f" ]] && needs_backup=true && break
done

if $needs_backup; then
    mkdir -p "$BACKUP_DIR"
    for f in "${existing[@]}"; do
        [[ -f "$PORTAL_DIR/$f" ]] && cp "$PORTAL_DIR/$f" "$BACKUP_DIR/$f"
    done
    echo "✓ Backed up existing configs to $BACKUP_DIR"
fi

# ── Remove generic portals.conf (compositor-specific files take over) ──────────
if [[ -f "$PORTAL_DIR/portals.conf" ]]; then
    rm "$PORTAL_DIR/portals.conf"
    echo "✓ Removed generic portals.conf"
fi

# ── niri-portals.conf ──────────────────────────────────────────────────────────
cat > "$PORTAL_DIR/niri-portals.conf" << 'EOF'
[preferred]
default=gnome;gtk;
org.freedesktop.impl.portal.FileChooser=gtk
EOF
echo "✓ Written niri-portals.conf"

# ── sway-portals.conf ──────────────────────────────────────────────────────────
cat > "$PORTAL_DIR/sway-portals.conf" << 'EOF'
[preferred]
default=wlr;gtk;
org.freedesktop.impl.portal.ScreenCast=wlr
org.freedesktop.impl.portal.Screenshot=wlr
EOF
echo "✓ Written sway-portals.conf"

# ── Restart portal daemon ──────────────────────────────────────────────────────
systemctl --user restart xdg-desktop-portal 2>/dev/null && \
    echo "✓ xdg-desktop-portal restarted" || \
    echo "⚠ Could not restart xdg-desktop-portal — do it manually or log out/in"

echo ""
echo "Done. Verify with:"
echo "  systemctl --user status xdg-desktop-portal"
