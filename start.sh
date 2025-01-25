echo               ─────▄▄────▄▀▀█▀▀▀▀▄
echo               ──▄▀▀──▀▀▄▄█▄▄█────█
echo               ▄▀─────────█──█────█
echo               ────────────▀▀▀▀▀▀▀            

echo PLEASE READ README!!!!

IPADDRESS=for_example_192.168.0.1

read -r -p "Are you want connect to the server? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
IPADDRESS=!!Enter here ip of the server!!
ssh $IPADDRESS
        echo 5
        ;;
    *)
        echo Exit OSS
        exit
        ;;
esac

