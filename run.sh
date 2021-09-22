# Delete old config
rm ~/.config/sucks.conf

echo "Logging in to $SUCKS_EMAIL, using $SUCKS_CC $SUCKS_CONT"

# Log in again, get new token
sucks login --email $SUCKS_EMAIL --password $SUCKS_PASSWORD --country-code $SUCKS_CC  --continent-code $SUCKS_CONT --verify-ssl False

# Clean
timeout 60 sucks clean 0