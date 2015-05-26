MYDIR=$PWD
export OPENSSL_CONF=$MYDIR/openssl.cnf
#echo $MYDIR
mkdir -p pki/nginx
mkdir -p pki/nginx/private
cd pki/nginx 
openssl genrsa -out private/nginx.key 2048
openssl req -new -key private/nginx.key -out nginx.csr
openssl x509 -req -in nginx.csr -CA $MYDIR/pki/CA/ca.crt -CAkey $MYDIR/pki/CA/private/ca.pem -CAcreateserial -out nginx.crt
sudo cp nginx.crt /etc/nginx/
sudo cp private/nginx.key /etc/nginx/
