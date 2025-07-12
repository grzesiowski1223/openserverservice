#!/bin/bash


RED='\033[31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}  ___    _____  _____     ____  ____    _____ ______   ____  _      _        ___  ____  ${NC}"
echo -e "${GREEN} /   \  / ___/ / ___/    |    ||    \  / ___/|      | /    || |    | |      /  _]|    \ ${NC}"
echo -e "${GREEN}|     |(   \_ (   \_      |  | |  _  |(   \_ |      ||  o  || |    | |     /  [_ |  D  )${NC}"
echo -e "${GREEN}|  O  | \__  | \__  |     |  | |  |  | \__  ||_|  |_||     || |___ | |___ |    _]|    / ${NC}"
echo -e "${GREEN}|     | /  \ | /  \ |     |  | |  |  | /  \ |  |  |  |  _  ||     ||     ||   [_ |    \ ${NC}"
echo -e "${GREEN}|     | \    | \    |     |  | |  |  | \    |  |  |  |  |  ||     ||     ||     ||  .  \ ${NC}"
echo -e "${GREEN} \___/   \___|  \___|    |____||__|__|  \___|  |__|  |__|__||_____||_____||_____||__|\_|${NC}"

read -r -p "Would you like install an OpenServerService command? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo ""
        read -r -p "Enter the IP address of your server: " ip
        echo "-----------------Downloading------------------"
        curl -s -o oss https://raw.githubusercontent.com/grzesiowski1223/openserverservice/main/oss
        
        if [[ ! -f oss ]]; then
            echo -e "${RED}Download failed. Please check the URL or your internet connection.${NC}"
            exit 1
        fi
        
        sed -i "s|^IPADDRESS=.*$|IPADDRESS=\"$ip\"|" oss
        chmod +x oss
        sudo cp oss /usr/local/bin/
        echo -e "${GREEN}The instalation is succesfull${NC}"
        echo "You can now run oss as a command!"
        ;;
    *)
        echo "Exiting..."
        exit
        ;;
esac
