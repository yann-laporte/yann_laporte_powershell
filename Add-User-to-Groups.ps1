<# 

Use this function to add a specified user (SamAccountName) to a predifined group, add more rows as needed (cf. comment in function)
This is useful when you frequently need to add users to the same AD group.

It's best to change the function name according to the group name (cf. notes at the bottom)

#>

function Add-ADUser-to-ADGroup {
    param (
        [Parameter (Mandatory=$true)]
        [ValidateNotNullorEmpty()]
        [string]$userprovided
    )
Add-ADGroupMember -Server <#add your server/domain here#> -Identity "GROUP NAME" -Members "$userprovided"
#Add-ADGroupMember -Server <#add your server/domain here#> -Identity 'GROUP NAME 2' -Members "$userprovided"
}



<# 

Example for a user john-doe in Domain domain.com that you need to add to a group named AD Group 01:

function Add-ADUser-to-ADGroup01 {
    param (
        [Parameter (Mandatory=$true)]
        [ValidateNotNullorEmpty()]
        [string]$userprovided
    )
Add-ADGroupMember -Server domain.com -Identity 'AD Group 01' -Members "$userprovided"
}

You'd then run the command below that would add John Doe in the group AD Group 01:

Add-ADUser-to-ADGroup01 john-doe

#>
