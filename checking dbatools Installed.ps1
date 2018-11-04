
$dbatools = Get-Module -ListAvailable | where {$_.Name -eq 'dbatools'}

if ($dbatools.Name -eq 'dbatools') 
{ }

elseif ($dbatools.Name -ne 'dbatools') 

{Install-Module dbatools}
