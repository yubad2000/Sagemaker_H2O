#!/bin/bash

payload=${1:-payload.csv}
content=${2:-text/csv}

curl --data-binary @${payload} -H "Content-Type: ${content}" -v http://localhost:8080/invocations
