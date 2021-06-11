#!/bin/bash

echo "TCI login start"

/tci/tibcli login --org "$ORG" --region "$REGION" --username "$USER" --password "$PASSWORD"
