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

## **ATENCIÓ**

en el servidor kerberitzat CAL que existeixi el fitxer krb5.keytab amb l'entrada host/kssh, 
aquest element s'ha d'extreure del servidor kerberos. És a dir, primer cal generar la clau 
al servidor kerberos i llavors cal exportar-la al kssh. Per tant, NO serveix la clau que
hi ha al repositori github sinó que se n'ha d'obtenir una de nova.

En el servidor la clau ja estava generada, si calgues generar-la de nou cal fer:
  a) kadmin -p pau
  b) addprinc -randkey host/kssh

En el kssh server kerberitzat:

  a) kadmin -p pau
  b) ktadd -k /etc/krb5.keytab host/kssh

## Practicar

  a) connectar de un client al kssh i observar que pot entrar usant la contrasenya kerberos
     $ ssh pere@kssh
     passwd for pere@EDT.ORG: kpere

  b) observar que si no hi ha clau host/kssh en el keytab del kssh, llavors
     en fer ssh pere@kssh també demana el passwd

  c) observar que si no hi ha clau host/kssh en el keytab del kssh, tot i que pere hagi fet kinit
     correctament, en fer ssh pere@kssh també demana el passwd

  d) si al kssh hi ha el keytab apropiat, i pere ha fet kinit, en fer:
     ssh pere@kssh
     l'usuari pere inicia sessió automàticament

    - observar en sortir de la sessió que en fer klist mostra que tenim varis tiquets.

