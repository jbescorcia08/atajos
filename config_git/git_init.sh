#!/bin/bash

echo "Configurando GIT"
git init


echo "Configuración de USUARIO / EMAIL, evita usar espacios"
echo "Ingresa el nombre de usuario (USR):"
read usr
echo "Ingresa el correo electrónico (EMAIL):"
read email

git config --global user.name "$usr"
git config --global user.email "$email"


# Configuración del repositorio
echo "Ingresa el enlace de la rama remota:"
read rama_remota
git remote add origin "$rama_remota"


echo "¿Hay información en la rama remota? (N/S)"
read rp_nuevo
if [[ ( $rp_nuevo == "N" ) || ( $rp_nuevo == "n" ) ]]; then
    touch README.md
    git add README.md
    git commit -m "Mi primer commit: configuración de GIT en entorno Linux"
    git push origin main
elif [[ ( $rp_nuevo == "S" ) || ( $rp_nuevo == "s" ) ]]; then
    git pull origin main
    echo "OK.. :)"
fi

git branch -M main
