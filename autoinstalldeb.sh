 #!/bin/bash

    echo Atualizando repositórios..
if ! apt-get update
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
    echo "Atualização feita com sucesso"

    echo "Atualizando pacotes já instalados"
if ! apt-get dist-upgrade -y
then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
    echo "Atualização de pacotes feita com sucesso"

    echo "Instalando Virtualbox"
if dpkg -l | grep virtualbox
then 
    echo "Pulando etapa, programa já está instalado!" 
    else sudo apt install virtualbox -y
fi 

    echo "Instalando Steam"
if dpkg -l | grep steam
then
    echo "Pulando etapa, Steam já está instalado!" 
  else sudo apt install steam -y 
fi

    echo "Instalando Google Chrome"
if dpkg -l | grep google-chrome
then 
    echo "Pulando etapa, Google Chrome está instalado!"
 else 
wget 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb' && sudo dpkg -i google*.deb 
fi

echo "Instalando FFMPEG"
if dpkg -l | grep ffmpeg
then 
    echo "Pulando etapa, FFMPEG já instalado!"
else sudo apt install ffmpeg -y 
fi 

 echo "Instalando OBS"
if dpkg -l | grep obs-studio
then
    echo "Pulando Etapa, OBS já instalado!"
else 
sudo -S add-apt-repository 'ppa:obsproject/obs-studio' && sudo apt update && sudo apt install obs-studio -y
fi

echo "Instalando Shutter"
if dpkg -l | grep shutter
then 
    echo "Pulando etapa, Shutter já instalado!"
else sudo apt install shutter -y 
fi 

echo "Instalando Amarok"
if dpkg -l | grep amarok
then 
    echo "Pulando etapa, Amarok já instalado!"
else sudo apt install amarok -y 
fi 

echo "Instalando Skype"
if dpkg -l | grep skype
then 
    echo "Pulando etapa, Amarok já instalado!"
else sudo apt install skype -y 
fi 

echo "Instalando DropBox"
if dpkg -l | grep dropbox
then 
    echo "Pulando etapa, Amarok já instalado!"
else sudo apt install dropbox -y 
fi 

echo "Instalando Sublime "
if dpkg -l | grep sublime
then 
    echo "Pulando etapa, Amarok já instalado!"
else sudo apt install sublime -y 
fi 

echo "Instalando Devede"
if dpkg -l | grep devede
then 
    echo "Pulando etapa, Amarok já instalado!"
else sudo apt install devede -y 
fi 

echo "Instalando PlayonLinux"
if dpkg -l | grep playonlinux
then 
    echo "Pulando etapa, Amarok já instalado!"
else sudo apt install playonlinux -y 
fi 

echo "Instalando Audacity"
if dpkg -l | grep audacity
then 
    echo "Pulando etapa, Amarok já instalado!"
else sudo apt install audacity -y 
fi 

echo "Instalando K3B"
if dpkg -l | grep k3b
then 
    echo "Pulando etapa, Amarok já instalado!"
else sudo apt install k3b -y 
fi 
echo "Instalação finalizada"
