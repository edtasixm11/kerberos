# Crear la xarxa kerberos
docker network create kerberos
docker network inspect kerberos

# Crear la imatge
docker build --tag kserver:base .

# Pujar la imatge al repositori docker
docker tag kserver:base edtasixm11/kserver:base
docker tag kserver:base edtasixm11/kserver:latest
docker push edtasixm11/kserver:base
docker push edtasixm11/kserver:latest

# Generar un server amb la imatge creada: --------------------------
docker run --net kerberos --name kserver -h kserver -d kserver:base
# -------------------------------------------------------------------


# Generar interactivament un server kerberos...
docker run --net kerberos --name kserver -h kserver -it fedora:24 /bin/bash

