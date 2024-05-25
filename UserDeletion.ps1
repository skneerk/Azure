# # Remove an individual user account
# $userName = "Chris Green"
# $userId = (Get-MgUser -Filter "displayName eq '$userName'").Id
# Remove-MgUser -UserId $userId -Confirm:$false


Remove-MgUser -UserId "john.doe@shyamkcs16sahyadriedu.onmicrosoft.com"