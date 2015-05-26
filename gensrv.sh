MYDIR=$PWD
export OPENSSL_CONF=$MYDIR/openssl.cnf
#echo $MYDIR
mkdir -p pki/server
mkdir -p pki/server/private
cd pki/server 
openssl genrsa -out private/server.key 2048
openssl req -new -key private/server.key -out server.csr
openssl x509 -req -in server.csr -CA $MYDIR/pki/CA/ca.crt -CAkey $MYDIR/pki/CA/private/ca.pem -CAcreateserial -out server.crt
