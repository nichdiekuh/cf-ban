
This script is a useful utiliy when a site protected by CloudFlare is under attack.

The script can read logfiles in Apache format and block IPs on Cloudflare based on a
configurable amout of occurences.
Please note to log the X-FORWARD-IP to get the real client ips instead of the cloudflare IPS

When using Varnish you can use the following command to log the traffic into a 
readable format:

`varnishncsa -f > temp.log`
The parameter `-f` logs the X-FORWARD-IP.

Please fork and extend this script! 
