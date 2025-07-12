#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m'

echo "${GREEN}  ___    _____  _____     ____  ____    _____ ______   ____  _      _        ___  ____  "
echo "${GREEN} /   \  / ___/ / ___/    |    ||    \  / ___/|      | /    || |    | |      /  _]|    \ "
echo "${GREEN}|     |(   \_ (   \_      |  | |  _  |(   \_ |      ||  o  || |    | |     /  [_ |  D  )"
echo "${GREEN}|  O  | \__  | \__  |     |  | |  |  | \__  ||_|  |_||     || |___ | |___ |    _]|    / "
echo "${GREEN}|     | /  \ | /  \ |     |  | |  |  | /  \ |  |  |  |  _  ||     ||     ||   [_ |    \ "
echo "${GREEN}|     | \    | \    |     |  | |  |  | \    |  |  |  |  |  ||     ||     ||     ||  .  \"
echo "${GREEN} \___/   \___|  \___|    |____||__|__|  \___|  |__|  |__|__||_____||_____||_____||__|\_|${NC}"

read -r -p "Would you like install an OpenServerService command? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo ""
        read -r -p "Enter the IP address of your server: " ip
        #-----------------Downloading------------------
        curl -s -o https://raw.githubusercontent.com/grzesiowski1223/openserverservice/main/oss
        sed -i "s|^IPADDRESS=.*$|IPADDRESS=\"$ip\"|" oss
        chmod +x oss
        sudo cp oss /usr/local/bin/
        echo"${GREEN}The instalation is succesfull${NC}"
        echo "You can now run oss as a command!"
        ;;
    *)
        echo "Exiting..."
        exit
        ;;
esac
