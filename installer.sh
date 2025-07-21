#!/bin/bash

RED=$(echo -e '\033[31m')
GREEN=$(echo -e '\033[0;32m')
NC=$(echo -e '\033[0m')

# Logo
echo -e "${GREEN}  ___    _____  _____     ____  ____    _____ ______   ____  _      _        ___  ____  ${NC}"
echo -e "${GREEN} /   \\  / ___/ / ___/    |    ||    \\  / ___/|      | /    || |    | |      /  _]|    \\ ${NC}"
echo -e "${GREEN}|     |(   \\_ (   \\_      |  | |  _  |(   \\_ |      ||  o  || |    | |     /  [_ |  D  )${NC}"
echo -e "${GREEN}|  O  | \\__  | \\__  |     |  | |  |  | \\__  ||_|  |_||     || |___ | |___ |    _]|    / ${NC}"
echo -e "${GREEN}|     | /  \\ | /  \\ |     |  | |  |  | /  \\ |  |  |  |  _  ||     ||     ||   [_ |    \\ ${NC}"
echo -e "${GREEN}|     | \\    | \\    |     |  | |  |  | \\    |  |  |  |  |  ||     ||     ||     ||  .  \\ ${NC}"
echo -e "${GREEN} \\___/   \\___|  \\___|    |____||__|__|  \\___|  |__|  |__|__||_____||_____||_____||__|\\_|${NC}"

read -r -p "Would you like to install the OpenServerService command? [y/N] " response

case "$response" in
    [yY][eE][sS]|[yY])
        echo ""
        read -r -p "Enter the IP address of your server OR ssh syntax for example [user@192.168.0.1] : " ip

        echo ""
        echo "-----------------Downloading------------------"
        echo ""

        curl -s -o oss https://raw.githubusercontent.com/grzesiowski1223/openserverservice/main/oss

        if [[ ! -f oss ]]; then
            echo -e "${RED}Download failed. Please check the URL or your internet connection.${NC}"
            exit 1
        fi

        sed -i "s|^IPADDRESS=.*$|IPADDRESS=\"$ip\"|" oss
        chmod +x oss
        sudo cp oss /usr/local/bin/

        echo -e "${GREEN}The installation is successful.${NC}"
        echo "You can now run 'oss' as a command!"
        ;;
    *)
        echo "Exiting..."
        exit
        ;;
esac

