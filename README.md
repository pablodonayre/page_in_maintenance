# page_in_maintenance
Static Page (Html + CSS + Javascript) with countdown indicating that our system is in maintenance and will come back soon

You can set a target time for comming back, that is used to calculate the remaining time.
If you have reached the target time but still cannot restablish your system, this page will add 01, 02, 03 hours and so on to your "target time" in order to have a positive remaing time all the time


SERVER CONFIGURATION

    1. Access to Digital Ocean
    2. Create a LEMP server
    3. Nginx configuration
        - cd /etc/nginx/sites-available/
        - nano digitalocean
            by default digital ocean sets digitalocean file in sites-enabled, by this reason we will modify this
            + change the root route
                root /var/www/html/page_in_maintenance

            + add domain y el subdomain

                # Make site accessible from http://localhost/
                server_name quanticoservices.com webpos.quanticoservices.com;

        - systemctl restart nginx

    4. Load files
        - bash post_rsync.sh
        - cd /var/www/html/page_in_maintenance


NOTES FOR MY OWN

After being sure that the server prepared is running successfully:

    - Go to Digital Ocean > Manage > Networking > Reserved IPs
    - Locate the reserved IP assigned to your droplet and reassign it to the server with the "Maintenance page"