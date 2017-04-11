#!/usr/bin/env bash
set -e

curl -I $TEST_URL 2>/dev/null | head -n 1 | cut -d$' ' -f2
get_code="curl -I $TEST_URL 2>/dev/null | head -n 1 | cut -d$' ' -f2"
status_code=`eval $get_code`

if [ "$status_code" != "200" ]
then
  echo "Expect status code from $TEST_URL as 200, but got $status_code"
fi
