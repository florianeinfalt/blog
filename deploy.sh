#!/bin/sh
# set -e

# echo 'Installing lftp'
# sudo apt-get install -y lftp

# deployment via ftp upload. Using FTPS for that
# lftp -c "set ftps:initial-prot ''; set ftp:ssl-force true; set ftp:ssl-protect-data true; open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21/htdocs; mirror -eRv public .; quit;"
echo 'Uploading...'
lftp -c "set ftp:initial-prot ''; open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21/htdocs; mirror -eRv public .; quit;"
