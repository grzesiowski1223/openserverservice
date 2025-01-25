#!/bin/bash

echo "─────▄▄────▄▀▀█▀▀▀▀▄"
echo "──▄▀▀──▀▀▄▄█▄▄█────█"
echo "▄▀─────────█──█────█"
echo "────────────▀▀▀▀▀▀▀"

echo "PLEASE READ README!!!!"

# To connect with your server enter ip address here
IPADDRESS="192.168.0.1"

read -r -p "Do you want to connect to the server at $IPADDRESS? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        ssh "$IPADDRESS"
        echo "Connection closed."
        ;;
    *)
        echo "Exiting..."
        exit
        ;;
esac
