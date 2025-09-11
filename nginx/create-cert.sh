# Generate a certificate. 
# -x509              the format standard for the new certificate
# -nodes             do not encrypt the private key with a passphrase
# -days 365          set the validity period to 1 year
# -newkey rsa:2048   create a 2048-bit RSA key pair
openssh req \ 
	-x509  \
	-nodes  \
	-days 36  \
	-newkey rsa:2048  \
	-keyout selfsigned.key  \
	-out selfsigned.crt \
