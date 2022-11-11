#!/bin/sh
if [ ! -f UUID ]; then
  UUID="07231556-acf7-455d-95aa-77702ad25fea"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

