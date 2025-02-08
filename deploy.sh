#!/bin/sh

hugo -d htdocs && ssh cyril@vallee.io "doas chown -R cyril:cyril /var/www/htdocs" && rsync -avz --delete htdocs cyril@vallee.io:/var/www/ && ssh cyril@vallee.io "doas chown -R www:www /var/www/htdocs"
echo "All synced! Have a nice day."
exit 0
