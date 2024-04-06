#!/usr/bin/env bash

url='https://mc-api.dribl.com/api/fixtures?date_range=default&season=3vmZpnGKq5&competition=R3NPZlPdr4&league=8nm7kPnLmO&club=RwNl4geNjr&tenant=kbam1QjmwX'

curl "$url" \
    --compressed \
    --header 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0' \
    --header 'Accept: application/json' \
    --header 'Accept-Language: en-US,en;q=0.5' \
    --header 'Accept-Encoding: gzip, deflate, br' \
    --header 'X-Requested-With: XMLHttpRequest' \
    --header 'Origin: https://mwfa.dribl.com' \
    --header 'DNT: 1' \
    --header 'Sec-GPC: 1' \
    --header 'Connection: keep-alive' \
    --header 'Referer: https://mwfa.dribl.com/' \
    --header 'Sec-Fetch-Dest: empty' \
    --header 'Sec-Fetch-Mode: cors' \
    --header 'Sec-Fetch-Site: same-site' \
    --header 'TE: trailers'
