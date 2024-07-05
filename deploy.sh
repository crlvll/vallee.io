#!/bin/sh

hugo -d htdocs && ssh cyril@arveed.com "doas chown -R cyril:cyril /var/www/htdocs" && rsync -avz --delete htdocs cyril@arveed.com:/var/www/ && ssh cyril@arveed.com "doas chown -R www:www /var/www/htdocs"
echo "All synced! Have a nice day."
exit 0
