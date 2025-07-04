#!/bin/bash

# Today's date format (e.g., "Sat Jul 05")
today=$(date '+%a %b %d')

# ⏱ Get current minute
current_minute=$(date '+%M')

# ===============================
# 🔔 1. Check if an event is starting now (run every minute)
# ===============================
start_now=$(date '+%Y-%m-%dT%H:%M')
end_now=$(date -d '+1 minute' '+%Y-%m-%dT%H:%M')

events_now=$(gcalcli --nocolor agenda "$start_now" "$end_now" | grep "^$today" | grep -E '[0-9]{1,2}:[0-9]{2}[aApP][mM]')

if [[ -n "$events_now" ]]; then
  formatted=""
  while IFS= read -r line; do
    time=$(echo "$line" | awk '{print $(NF-1)}')
    title=$(echo "$line" | awk '{$1=$2=$3=""; $NF=""; print}' | sed 's/^[ \t]*//')
    formatted+="$time → $title"$'\n'
    wrapped=$(echo "$title" | fold -s -w 60 | tail -n +2 | sed 's/^/       /')
    [[ -n "$wrapped" ]] && formatted+="$wrapped"$'\n'
  done <<< "$events_now"
  
  formatted=$(echo "$formatted" | sed '/^$/d')
  notify-send "🔔 Event Starting Now!" "$formatted"
fi

# ===============================
# 📅 2. Show upcoming events every 15 minutes
# Only run when minute = 0, 15, 30, 45
# ===============================

if [[ "$current_minute" =~ ^(00|15|30|45)$ ]]; then
  start_upcoming=$(date '+%Y-%m-%dT%H:%M')
  end_upcoming=$(date -d '+2 hours' '+%Y-%m-%dT%H:%M')

  events_soon=$(gcalcli --nocolor agenda "$start_upcoming" "$end_upcoming" | grep "^$today" | grep -E '[0-9]{1,2}:[0-9]{2}[aApP][mM]')

  if [[ -n "$events_soon" ]]; then
    formatted=""
    while IFS= read -r line; do
      time=$(echo "$line" | awk '{print $(NF-1)}')
      title=$(echo "$line" | awk '{$1=$2=$3=""; $NF=""; print}' | sed 's/^[ \t]*//')
      formatted+="$time → $title"$'\n'
      wrapped=$(echo "$title" | fold -s -w 60 | tail -n +2 | sed 's/^/       /')
      [[ -n "$wrapped" ]] && formatted+="$wrapped"$'\n'
    done <<< "$events_soon"

    formatted=$(echo "$formatted" | sed '/^$/d')
    notify-send "📅 Upcoming Events" "$formatted"
  else
    notify-send "📅 Upcoming Events" "✅ Nothing scheduled soon"
  fi
fi
