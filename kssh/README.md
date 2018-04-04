# SSH Server: kssh

## Descripció

Servidor SSH kerberos aware.
Servidor ssh que permet l'autenticació d'usuaris amb kerberos (autenticació de clients ssh). 
Es creen comptes de usuaris locals unix però no se'ls assigna passwd per mostrar més clarament
que l'autenticació és kerberos.
Usuaris creats: pere, anna, marta, pau, julia, jordi.

## Procediment

#### Crear la xarxa kerberos
docker network create kerberos
docker network inspect kerberos

#### Crear la imatge
docker build --tag kssh:base .


#### Generar un server amb la imatge creada: --------------------------
docker run --net kerberos --name kssh -h kssh -d  kssh:base



