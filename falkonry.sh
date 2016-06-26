#!/bin/bash
sed -i -e "s/app.datadoghq.com/$FALKONRY_URL/g" /etc/dd-agent/datadog.conf
/bin/bash /entrypoint.sh $@