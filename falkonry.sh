#!/bin/bash
prop="dd_url:"
if [[ $FALKONRY_URL == *"?"* ]]
then
val="dd_url: "$(echo "$FALKONRY_URL" | sed 's/&/\\&/')  
else
val="dd_url: "$(echo "$FALKONRY_URL" | sed 's/&/\\&/')"?q=1234"
fi
sed -i -e "s@${prop}.*@${val}@g" /etc/dd-agent/datadog.conf

/bin/bash /entrypoint.sh $@

