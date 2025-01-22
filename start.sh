echo               ─────▄▄────▄▀▀█▀▀▀▀▄
echo               ──▄▀▀──▀▀▄▄█▄▄█────█
echo               ▄▀─────────█──█────█
echo               ────────────▀▀▀▀▀▀▀            

echo PLEASE READ README!!!!

read -r -p "Czy chcesz polaczyc sie z serverem NerdNetwork? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
IPADDRESS=!!Enter here ip of the server!!
ssh $IPADDRESS
        echo 5
        ;;
    *)
        echo Wychodzi z programu
        exit
        ;;
esac

