server_user=root;
server_ip=192.81.215.250;
server_dir=/var/www/html/;

origin=/home/$USER/Documents/Prod/page_in_maintenance;
destination=$server_user@$server_ip:$server_dir;

rsync -cizP --recursive --delete --exclude-from=excludePatterns  $origin  $destination