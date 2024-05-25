Install-Module Microsoft.Graph -Force
Install-Module Microsoft.Graph.Beta -AllowClobber -Force

Connect-MgGraph -Scopes "User.ReadWrite.All"

# Create password profile
$PasswordProfile = @{
	Password = "P@ssw0rd!"
	ForceChangePasswordNextSignIn = $true
	ForceChangePasswordNextSignInWithMfa = $true
}
	
# Create Microsoft Entra ID user
$UserParams = @{
	DisplayName = "Jeff Baker"
	MailNickName = "Jeff.Baker"
	UserPrincipalName = "Jeff.Baker@exoip.com"
	PasswordProfile = $PasswordProfile
	AccountEnabled = $true
}
New-MgUser @UserParams
