rm error
echo -e "passage en ROOT : entrer le mot de passe"
sudo echo 123 >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de apache 2"
echo -e "merci d'entrer O"
sudo apt-get install apache2 >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de php"
echo -e "merci d'entrer O"
sudo apt-get install php >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de libapache2 mod php"
echo -e "merci d'entrer O"
sudo apt-get install libapache2-mod-php >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de mysql server"
echo -e "merci d'entrer O"
sudo apt-get install mysql-server >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de php mysql"
echo -e "merci d'entrer O"
sudo apt-get install php-mysql >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de php apc"
echo -e "merci d'entrer O"
sudo apt-get install php-apc >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de php intl"
echo -e "merci d'entrer O"
sudo apt-get install php-intl >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de phpmyadmin"
sudo apt-get install phpmyadmin >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "restart apache 2"
sudo /etc/init.d/apache2 restart >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installer curl"
echo -e "merci d'entrer O"
sudo apt-get install curl >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "installation de composer"
echo -e "merci d'entrer O"
sudo curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "création du dossier /usr/local/bin"
sudo mkdir -p /usr/local/bin >> error
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
echo -e "droit au dossier /usr/local/bin/symfony"
sudo chmod a+x /usr/local/bin/symfony
if [ $? -eq 0 ]; then 
   echo -e "\033[32m [OK] \033[0m"
else
   echo -e "\033[31m [FAILED] \033[0m"
fi
