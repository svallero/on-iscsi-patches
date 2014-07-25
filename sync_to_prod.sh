#!/bin/sh

dest_dir='/home/cloudadm/prod/on-iscsi-patches/'
files='
create-from-iqn
create-image-block
datastore-iscsi.conf
ln 
mkfs
rm 
ts-809u.sh
scan_images.rb
'

rsync -av -R -L --delete --exclude=LAST_SYNC ${files} ${dest_dir}

date > ${dest_dir}/LAST_SYNC
