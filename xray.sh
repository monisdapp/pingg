#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d6d90d9a-0feb-443e-a696-5dfb49dda45c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

