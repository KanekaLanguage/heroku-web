find . -type f -exec chmod 664 {} \;
find . -type d -exec chmod 775 {} \;
chown -R bitnami:daemon .
