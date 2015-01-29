
This script is a useful utiliy when a site protected by CloudFlare is under attack.

The script can read logfiles in Apache format and block IPs on Cloudflare by a
configurable amout of occurences.

When using Varnish you can use the following command to log the traffic into a 
readable format:

`varnishncsa -f > temp.log`


Please fork and extend this script! 
