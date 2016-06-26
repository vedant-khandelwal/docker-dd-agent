#!/bin/bash
prop="dd_url:"
val="dd_url: "$(echo "$FALKONRY_URL" | sed 's/&/\\&/')

sed -i -e "s@${prop}.*@${val}@g" /etc/dd-agent/datadog.conf

/bin/bash /entrypoint.sh $@