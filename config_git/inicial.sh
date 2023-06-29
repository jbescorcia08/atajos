#!/bin/bash
echo "Configurando GIT"
echo "# atajos" >> README.md
git init

echo "Configuración de USUARIO / EMAIL, evita usar espacios"
echo "Ingresa el nombre de usuario (USR):"
read usr
echo "Ingresa el correo electrónico (EMAIL):"
read email

git config --global user.name "$usr"
git config --global user.email "$email"

# Configuración del repositorio
git add README.md
git commit -m "Mi primer commit: configuración de GIT en entorno Linux"
git branch -M main

echo "Ingresa el enlace de la rama remota:"
read rama_remota
git remote add origin "$rama_remota"
git pull -u origin main
git add . 
git commit -m "configuracion GIT"
git push -u origin main
