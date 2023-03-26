## Removing dead data from Microsoft store Applications

Run the following command in PowerShell to list current Packages
`Get-AppxPackage -AllUsers | ft`

If the app is found in the list we can remove it.

Run this command once, to verify you are targeting the correct package
`Get-AppxPackage -AllUsers | Where-Object { $_.name -like "*Name of App here*" } `

Once verified run this to delete
`Get-AppxPackage -AllUsers | Where-Object { $_.name -like "*Name of App here*" } | Remove-AppxPackage`
