#!/usr/bin/env bash

CONFIG_FILE="conf.cf"
MESSAGE="Test message"
USE_UPPERCASE=
USE_COLORS=
RED="\033[31;1m"

eval $(./parser.sh $CONFIG_FILE)

[ "$(echo $CONF_USE_UPPERCASE)" = "1" ] && USE_UPPERCASE="1"
[ "$(echo $CONF_USE_COLORS)" = "1" ] && USE_COLORS="1"

[ "$USE_UPPERCASE" = "1" ] && MESSAGE="$(echo -e $MESSAGE | tr a-z A-Z)"
[ "$USE_COLORS" = "1" ] && MESSAGE="$(echo -e ${RED}$MESSAGE)"

echo -e "$MESSAGE"