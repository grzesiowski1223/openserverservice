echo               ─────▄▄────▄▀▀█▀▀▀▀▄
echo               ──▄▀▀──▀▀▄▄█▄▄█────█
echo               ▄▀─────────█──█────█
echo               ────────────▀▀▀▀▀▀▀            

read -r -p "Czy chcesz polaczyc sie z serverem NerdNetwork? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
#        ssh [INSERT IP]
        echo 5
        ;;
    *)
        echo Wychodzi z programu
        sleep (5s)
        ;;
esac

