# Kerberos

Repositori d'imatges de kerberos
@edt ASIX-M11 Curs 2017-2018

## Imatges:

### kserver

Servidor kerberos del kingdom EDT.ORG.
Incorpora els usuaris pere, marta, anna, pau, julia, jordi (password k<nom>)
L'usuari pau és administrador i marta/admin també .

### kclient

Simple client de kerberos del kingdom EDT.ORG.
Aquest host no fa autenticació d'usuaris (PAM...) amb kerberos, simplement permet
fer kinit / klist / kdestroy / kadmin.
És a dir, treballar com a un client de kerberos.

**nota** per veure un host fent autenticació d'usuaris del sistema contra kerberos
mireu la imatge khost.


### khost

Host client de kerberos que realitza la autenticació d'usuaris PAM validant-los
contra kerberos. S'ha modificat el PAM de chfn, login i system-auth perquè usin
pam_krb5.so (kerberos).
Observar que els usuaris validats es poden canviar el passwd amb la ordre passwd
normal i en realitat modifiquen el passwd de kerberos.


### kssh

Servidor SSH kerberos aware.
Servidor ssh que permet l'autenticació d'usuaris amb kerberos (autenticació de clients ssh). 
Es creen comptes de usuaris locals unix però no se'ls assigna passwd per mostrar més clarament
que l'autenticació és kerberos.
Usuaris creats: pere, anna, marta, pau, julia, jordi

