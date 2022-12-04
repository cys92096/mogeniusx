#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4bc22c99-ac0e-4587-b1d1-409748d88087"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

