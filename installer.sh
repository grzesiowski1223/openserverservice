echo "  ___    _____  _____     ____  ____    _____ ______   ____  _      _        ___  ____  "
echo " /   \  / ___/ / ___/    |    ||    \  / ___/|      | /    || |    | |      /  _]|    \ "
echo "|     |(   \_ (   \_      |  | |  _  |(   \_ |      ||  o  || |    | |     /  [_ |  D  )"
echo "|  O  | \__  | \__  |     |  | |  |  | \__  ||_|  |_||     || |___ | |___ |    _]|    / "
echo "|     | /  \ | /  \ |     |  | |  |  | /  \ |  |  |  |  _  ||     ||     ||   [_ |    \ "
echo "|     | \    | \    |     |  | |  |  | \    |  |  |  |  |  ||     ||     ||     ||  .  \"
echo " \___/   \___|  \___|    |____||__|__|  \___|  |__|  |__|__||_____||_____||_____||__|\_|"

read -r -p "Would you like install an OpenServerService command? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        curl -s -o https://raw.githubusercontent.com/grzesiowski1223/openserverservice/main/oss
        chmod +x oss
        sudo cp oss /usr/local/bin/
        echo"The instalation is succesfull you can now run oss"
        ;;
    *)
        echo "Exiting..."
        exit
        ;;
esac
