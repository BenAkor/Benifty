<#
 .SYNOPSIS
 Retrieves the Mac Address from a remote or local computer
 .DESCRIPTION
 Use WMI object to collect the MacAddress and the manufacturer name of the NIC
 .PARAMETER -Computername
 Enter the Computer name or ip address of the machine
 .EXAMPLE
 Get-MacAddress BAY-Computer
#>
function Get-MacAddress ($computername = 'localhost')
{
   Get-WMIObject win32_NetworkAdapter | Select-Object Name, MacAddress, @{l='Max Speed (Mb) '; e={$_.Speed / 1Mb -as [int]}}
}

