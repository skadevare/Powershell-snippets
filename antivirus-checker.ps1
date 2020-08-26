# ---------------------------------------------------------
#
# Skadevare.no
# A simple antivirus checker with potenial for commands
# based on result
#  
# ---------------------------------------------------------

# Query installed antivirus
$wmiQuery = "SELECT * FROM AntiVirusProduct"
$AntivirusProduct = Get-WmiObject -Namespace "root\SecurityCenter2" -Query $wmiQuery  @psboundparameters # -ErrorVariable myError -ErrorAction 'SilentlyContinue'             
            Write-host $AntivirusProduct.displayName


# Match installed antivirus to loop for needed commands
if ($AntivirusProduct.displayName -eq 'Windows Defender')
    {
	echo "Installed antivirus is WindowsDefender"

	}
if ($AntivirusProduct.displayName -eq 'Trend Micro Officescan')
    {
	echo "Installed antivirus is  Trend"

	}
