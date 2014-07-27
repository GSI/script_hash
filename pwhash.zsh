#!/usr/bin/zsh

domain="$1"
#[ -n "${domain}" ] || (echo -n 'Domain: ' && read domain)
echo -n 'Domain:   ' && [ -n "${domain}" ] && echo "${domain}" || read domain
echo -n 'Password: ' && read -s password

hash=`node ./calculate_hash.js "calculate_hash_from('${domain}', '${password}');"`
echo -n "${hash}" | xsel -bi
echo "${hash}"
echo '(copied to clipboard)'
