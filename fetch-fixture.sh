#!/usr/bin/env bash

curl 'https://mc-api.dribl.com/api/fixtures?date_range=default&season=3vmZpnGKq5&competition=R3NPZlPdr4&league=8nm7kPnLmO&club=RwNl4geNjr&tenant=kbam1QjmwX' \
  --compressed \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:125.0) Gecko/20100101 Firefox/125.0' \
  -H 'Accept: application/json' \
  -H 'Accept-Language: en-US,en;q=0.5' \
  -H 'Accept-Encoding: gzip, deflate' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'Origin: https://mwfa.dribl.com' \
  -H 'DNT: 1' \
  -H 'Sec-GPC: 1' \
  -H 'Connection: keep-alive' \
  -H 'Referer: https://mwfa.dribl.com/' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: same-site' \
  -H 'TE: trailers'
