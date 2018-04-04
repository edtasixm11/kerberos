# Kerveros client: kclient

## Descripció

Host client de kerberos que realitza la autenticació d'usuaris PAM validant-los
contra kerberos. S'ha modificat el PAM de chfn, login i system-auth perquè usin
pam_krb5.so (kerberos).
Observar que els usuaris validats es poden canviar el passwd amb la ordre passwd
normal i en realitat modifiquen el passwd de kerberos.

## Procediment

#### Crear la xarxa kerberos
docker network create kerberos
docker network inspect kerberos

#### Crear la imatge
docker build --tag khost:base .


#### Generar un server amb la imatge creada: --------------------------
docker run --net kerberos --name khost -h khost -it  khost:base

#### practicar

a) $ login anna
   $ klist
   $ id
   $ logout

b) $login anna
   $ chfn

c) $ su - pere
   pere$ su - anna
   $ klist

