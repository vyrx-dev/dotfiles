#!/bin/bash
# Days since last pacman -Syu

last_update=$(grep -i "full system upgrade" /var/log/pacman.log 2>/dev/null | tail -n 1)

if [ -z "$last_update" ]; then
	echo '{"text": "?", "class": "critical", "tooltip": "No update found"}'
	exit 0
fi

last_date=$(echo "$last_update" | grep -oP '\[\K[0-9]{4}-[0-9]{2}-[0-9]{2}')

if [ -z "$last_date" ]; then
	echo '{"text": "?", "class": "critical", "tooltip": "Could not parse date"}'
	exit 0
fi

last_epoch=$(date -d "$last_date" +%s 2>/dev/null)
current_epoch=$(date +%s)
days=$(((current_epoch - last_epoch) / 86400))

if [ $days -gt 7 ]; then
	class="critical"
else
	class=""
fi

if [ $days -eq 0 ]; then
	tooltip="Last full update: $last_date (today)"
else
	tooltip="$last_date"
fi

echo "{\"text\": \"$days\", \"class\": \"$class\", \"tooltip\": \"$tooltip\"}"
