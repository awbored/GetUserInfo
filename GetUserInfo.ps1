$ID = $args[0]
IF($ID -eq $null){$ID = Read-Host -Prompt "What is the sAMAccountName?"}
$attrib = Get-Content .\attrib.txt

Get-ADUser -Identity $ID -Properties $attrib |
Select-Object $attrib