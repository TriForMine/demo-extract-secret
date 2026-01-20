set -x

secret="$CONFIDENTIAL_ENV_VAR"

echo "=== TESTS 2026 ==="
echo "1. Direct               : $secret"
echo "2. Base64 simple        : $(echo -n "$secret" | base64 -w0)"
echo "3. Double base64        : $(echo -n "$secret" | base64 -w0 | base64 -w0)"
echo "4. Hex dump             : $(echo -n "$secret" | xxd -p)"
echo "5. Gzip + base64        : $(echo -n "$secret" | gzip -c | base64 -w0)"
echo "6. ROT13 (si ça passait) : $(echo "$secret" | tr 'A-Za-z' 'N-ZA-Mn-za-m')"
echo "7. Spaced chars         : $(echo "$secret" | sed 's/./& /g')"
echo "8. Char par char (fold) : $(echo "$secret" | fold -w1 | tr '\n' ' ')"
echo "9. Longueur             : ${#secret}"
echo "=== FIN ==="
