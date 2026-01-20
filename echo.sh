secret="$CONFIDENTIAL_ENV_VAR"


echo "=== TESTS ==="
echo "Direct     : $secret"
echo "Base64     : $(echo -n "$secret" | base64 -w0)"
echo "Hex        : $(echo -n "$secret" | xxd -p)"
echo "Reverse    : $(echo "$secret" | rev)"
echo "Spaced     : $(echo "$secret" | sed 's/./& /g')"
echo "Length     : ${#secret}"
echo "JSON try   : $(echo "{\"secret\":\"$secret\"}")"
echo "=== FIN ==="
