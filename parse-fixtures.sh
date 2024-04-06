#!/usr/bin/env bash

set -eou pipefail

enable -f /usr/lib/bash/csv csv

echo BEGIN:VCALENDAR
echo VERSION:2.0
echo PRODID:-//YourCompany//Football Schedule//EN
echo METHOD:REQUEST

# Process JSON data with jq
jq -r '
.data[] | [
  .attributes.name,
  .attributes.date,
  .attributes.ground_name,
  .attributes.home_team_name,
  .attributes.away_team_name
] | @csv
' fixtures.json | while read -r line; do
    name=$(echo "$line" | awk -F',' '{printf "%s", $1}' | tr -d '"')
    date=$(echo "$line" | awk -F',' '{printf "%s", $2}' | tr -d '"')
    ground_name=$(echo "$line" | awk -F',' '{printf "%s", $3}' | tr -d '"')
    home_team_name=$(echo "$line" | awk -F',' '{printf "%s", $4}' | tr -d '"')
    away_team_name=$(echo "$line" | awk -F',' '{printf "%s", $5}' | tr -d '"')

  # Format the date for ICS
  # start_date=$(date -u --date=@$(date "+%s" -d "$date") +%Y%m%dT%H%M%S)
  # end_date=$(date -u --date=@$(date "+%s" -d "$date 1 hour") +%Y%m%dT%H%M%S)
  start_date=$(date -d "$date" +%Y%m%dT%H%M%SZ)
  end_date=$(date -d "$date 1 hour" +%Y%m%dT%H%M%SZ)

  cat << EOF
BEGIN:VEVENT
DTSTART:$start_date
DTSTAMP:$start_date
DTEND:$end_date
UID:$start_date-fixture@glorybox.de
SUMMARY:$name
LOCATION:$ground_name
DESCRIPTION:
 Match between $home_team_name and $away_team_name
END:VEVENT
EOF

done

echo END:VCALENDAR
