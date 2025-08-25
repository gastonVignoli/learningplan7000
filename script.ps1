$Location = "north europe"

$ResourceGroup = "web-grp"

New-AzResourceGroup -Name $ResourceGroup -Location $Location

$AppServicePlan = "learningplan7000"

New-AzAppServicePlan -Name $AppServicePlan -ResourceGroupName $ResourceGroup -Location $Location -Tier Free

$AppName="learningplan7000"

New-AzWebApp -Name $AppName -ResourceGroupName $ResourceGroup -Location $Location -AppServicePlan $AppServicePlan 

