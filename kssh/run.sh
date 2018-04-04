# Crear la xarxa kerberos
docker network create kerberos
docker network inspect kerberos

# Crear la imatge
docker build --tag kssh:base .

# Pujar la imatge al repositori docker
docker tag kssh:base edtasixm11/kssh:base
docker tag kssht:base edtasixm11/kssh:latest
docker push edtasixm11/kssh:base
docker push edtasixm11/kssh:latest

# Generar un server amb la imatge creada: --------------------------
docker run --net kerberos --name kssh -d kssh:base
# -------------------------------------------------------------------


