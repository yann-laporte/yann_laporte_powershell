#Simple function to retrieve a specified user information
function Get-userinfo {
    param (
        [Parameter (Mandatory=$true)]
        [ValidateNotNullorEmpty()]
        [string]$userprovided
    )
$userfetched = Get-ADUser -Server <#add your server/domain here#> -Filter {EmailAddress -eq $userprovided} -Properties samaccountname,mail<# add more properties as needed#>
if
($userfetched -eq $null) {
Write-host "No user found"
}
return $userfetched
}