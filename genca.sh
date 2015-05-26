MYDIR=$PWD
export OPENSSL_CONF=$MYDIR/openssl.cnf
#echo $MYDIR
mkdir -p pki/CA
mkdir -p pki/CA/private
cd pki/CA 
#(umask 077;openssl genrsa -out private/ca.pem 2048)
openssl req -new -x509 -key private/ca.pem -out ca.crt -days 3650

