Copy-Item 'C:\scripts\_SHARE\WebServerInstance.ps1' 'C:\install\content\DynamicsNavDvd\WebClient\Microsoft Dynamics NAV\100\Web Client\bin\'
& 'C:\install\content\scripts\Install-Msi.ps1' -MsiFullPath 'C:\install\content\DynamicsNavDvd\WebClient\Microsoft Dynamics NAV Web Client.msi'
# 0ED65CB18D285E4EF3975AE2FCB55E693549709B

# Import-PfxCertificate C:\install\content\navcert.pfx -CertStoreLocation Cert:\LocalMachine\Root
$certificate | New-Item "IIS:\SSLBindings\0.0.0.0!443"
$certificate = Get-Item cert:\localmachine\My\$thumbprint
$thumbprint = '0ED65CB18D285E4EF3975AE2FCB55E693549709B'
New-WebBinding -Name $websitename -IPAddress * -Port 443 -Protocol https
$websitename = 'Microsoft Dynamics NAV 2017 Web Client'
Get-Website

