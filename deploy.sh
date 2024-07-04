#!/bin/sh

hugo -d htdocs && rsync -avz --delete htdocs cyril@arveed.com:/var/www/
echo "All synced! Have a nice day."
exit 0
