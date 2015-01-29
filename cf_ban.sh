#/usr/bin/bash

# Insert CloudFlare API token here
CF_TOKEN=""
# Insert CloudFlare E-Mail address here
CF_MAIL=""

#Threshold to ban IPs. If number of requests for
#an IP exceeds this limit,the IP will be banned.
THRESHOLD=100

#File to read from (Apache Log Format)
FILE="temp.log"

for ip in `cat $FILE |cut -d ' ' -f 1 |sort |uniq`;
do 
{ 
	COUNT=`grep ^$ip $FILE |wc -l`; 
	if [[ "$COUNT" -gt $THRESHOLD ]];
		then 
			echo "blocking $ip with $COUNT hits";
			curl https://www.cloudflare.com/api_json.html -d 'a=ban' -d "tkn=$CF_TOKEN" -d "email=$CF_MAIL" -d "key=$ip";
			printf "\n";
	fi 
}; done