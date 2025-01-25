echo               ─────▄▄────▄▀▀█▀▀▀▀▄
echo               ──▄▀▀──▀▀▄▄█▄▄█────█
echo               ▄▀─────────█──█────█
echo               ────────────▀▀▀▀▀▀▀            

echo PLEASE READ README!!!!

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

