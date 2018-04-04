# Kerveros client: kclient

## Descripció

Simple client de kerberos del kingdom EDT.ORG.
Aquest host no fa autenticació d'usuaris (PAM...) amb kerberos, simplement permet
fer kinit / klist / kdestroy / kadmin.
És a dir, treballar com a un client de kerberos.

**nota** per veure un host fent autenticació d'usuaris del sistema contra kerberos
mireu la imatge khost.

## Procediment

#### Crear la xarxa kerberos
docker network create kerberos
docker network inspect kerberos

#### Crear la imatge
docker build --tag kclient:base .


#### Generar un server amb la imatge creada: --------------------------
docker run --net kerberos --name kclient -h kclient  kclient:base

### Treballar
$ kinit pere
$ klist
$ kdestry
$ kadmin -p pau
kadmin: listprincs


