echo               ─────▄▄────▄▀▀█▀▀▀▀▄
echo               ──▄▀▀──▀▀▄▄█▄▄█────█
echo               ▄▀─────────█──█────█
echo               ────────────▀▀▀▀▀▀▀            

read -r -p "Czy chcesz polaczyc sie z serverem NerdNetwork? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
    # zrob source i ssh 
    # https://askubuntu.com/questions/367136/how-do-i-read-a-variable-from-a-file
        echo 5
        ;;
    *)
        echo Wychodzi z programu
        exit
        ;;
esac

