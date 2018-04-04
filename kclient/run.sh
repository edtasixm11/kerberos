# Crear la xarxa kerberos
docker network create kerberos
docker network inspect kerberos

# Crear la imatge
docker build --tag kclient:base .

# Pujar la imatge al repositori docker
docker tag kclient:base edtasixm11/kclient:base
docker tag kclient:base edtasixm11/kclient:latest
docker push edtasixm11/kclient:base
docker push edtasixm11/kclient:latest

# Generar un server amb la imatge creada: --------------------------
docker run --net kerberos --name kclient -h kclient kclient:base
# -------------------------------------------------------------------


