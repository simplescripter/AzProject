Remove-AzResourceGroup TemplateTest2 -Force
Sleep 10
New-AzResourceGroup TemplateTest2 -Location centralus
Read-Host "Hit Enter to continue..."
New-AzResourceGroupDeployment -Name Dep1 -ResourceGroupName TemplateTest2 `
    -TemplateUri https://raw.githubusercontent.com/simplescripter/AzProject/master/Main.json -Verbose