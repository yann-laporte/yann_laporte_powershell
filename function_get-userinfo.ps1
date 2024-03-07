#Simple function to retrieve a specified user information from Active Directory
function Get-userinfo {
    param (
        [Parameter (Mandatory=$true)]
        [ValidateNotNullorEmpty()]
        [string]$userprovided
    )
$userfetched = Get-ADUser -Server <#add your server/domain here#> -Filter {EmailAddress -eq $userprovided} -Properties SamAccountName,mail<# add more properties as needed#>
if
($userfetched -eq $null) {
Write-host "No user found"
}
return $userfetched
}

<#

Note:

If you only want to display certain properties, for example SamAccountName and mail, you need to add the following at the end of line 8:

| select SamAccountName,mail

So, in this example the line 8 should be:

$userfetched = Get-ADUser -Server server.com -Filter {EmailAddress -eq $userprovided} -Properties SamAccountName,mail | select SamAccountName,mail

#>