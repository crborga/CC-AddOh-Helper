$global:addons = "E:\WOW_WOTLK\Interface\Addons1"
$global:github = "https://www.github.com"
function Show-Menu
{
        param (
        [string]$Title = 'ChromieCraft AddOn Helper'
    )
	Clear-Host	
	Write-Host "============== $Title ================"
	Write-Host ""
	Write-Host "          1: AtlasLoot"
	Write-Host "          2: DBM"
	Write-Host "          3: ElvUI"
	Write-Host "          4: ElvUI AddOnSkins"
	Write-Host "          5: ElvUI Enhanced"
	Write-Host "          6: QuestHelper"
	Write-Host "          7: Skada"
	Write-Host "          8: AuctionHouseDepositFixer"
    Write-Host ""
	Write-Host "          L: Show AddOns"
    Write-Host ""
	Write-Host "========================================================="
	}

Show-Menu -Title 'ChromieCraft AddOn Helper'
 $selection = Read-Host "Please make a selection or Q to exit"
 switch ($selection)
 {
     '1' {
		  Write-Host '=============== Installing AtlasLoot ==================='
		  Invoke-Webrequest "$github/Wrath-AddOns/AtlasLoot_ChromieCraft/archive/refs/heads/master.zip" -Out "$addons\atlasloot.zip"
		  $atlasloot = "$addons\AtlasLoot_ChromieCraft-master\AtlasLoot*"
		  Expand-Archive "$addons\atlasloot.zip" -DestinationPath "$addons"
		  Copy-Item "$atlasloot" "$addons" -Recurse -Force
		  Remove-Item "$addons\AtlasLoot_ChromieCraft-master" -Recurse -Force
		  Remove-Item "$addons\atlasloot.zip"
		 } 
	 '2' {  
		  Write-Host '================= Installing DBM ========================'
		  Invoke-Webrequest "$github/balleny/DBM/archive/refs/heads/main.zip" -Out "$addons\dbm.zip"
		  $dbm = "$addons\DBM-main\DBM-*"
		  Expand-Archive "$addons\dbm.zip" -DestinationPath "$addons"
		  Copy-Item "$dbm" "$addons" -Recurse -Force
		  Remove-Item "$addons\DBM-main" -Recurse -Force
		  Remove-Item "$addons\dbm.zip"
		 } 
  	 '3' {
          Write-Host '================== Installing ElvUI ====================='
		  Invoke-Webrequest "$github/ElvUI-WotLK/ElvUI/archive/refs/heads/master.zip" -Out "$addons\elvui.zip"
		  $elvui = "$addons\ElvUI-master\ElvUI*"
		  Expand-Archive "$addons\elvui.zip" -DestinationPath "$addons"
		  Copy-Item "$elvui" "$addons" -Recurse -Force
		  Remove-Item "$addons\elvui.zip"
		  Remove-Item "$addons\ElvUI-master" -Recurse -Force
		 }
  	 '4' {
          Write-Host '============ Installing ElvUI AddonSkins ================'
		  Invoke-Webrequest "$github/ElvUI-WotLK/ElvUI_AddOnSkins/archive/refs/heads/master.zip" -Out "$addons\elvui.zip"
		  $elvui = "$addons\ElvUI_AddOnSkins-master\ElvUI*"
		  Expand-Archive "$addons\elvui.zip" -DestinationPath "$addons"
		  Copy-Item "$elvui" "$addons" -Recurse -Force
		  Remove-Item "$addons\elvui.zip"
		  Remove-Item "$addons\ElvUI_AddOnSkins-master" -Recurse -Force
		 }
  	 '5' {
          Write-Host '============ Installing ElvUI Enhanced ================'
		  Invoke-Webrequest "$github/ElvUI-WotLK/ElvUI_Enhanced/archive/refs/heads/master.zip" -Out "$addons\elvui.zip"
		  $elvui = "$addons\ElvUI_Enhanced-master\ElvUI*"
		  Expand-Archive "$addons\elvui.zip" -DestinationPath "$addons"
		  Copy-Item "$elvui" "$addons" -Recurse -Force
		  Remove-Item "$addons\elvui.zip"
		  Remove-Item "$addons\ElvUI_Enhanced-master" -Recurse -Force
		 }	
	 '6' {
		  Write-Host '=================== Installing QuestHelper ===================='
		  Invoke-Webrequest "$github/zorbathut/questhelper/archive/refs/heads/master.zip" -Out "$addons\qh.zip"
		  $qh = "$addons\questhelper-master\*"
		  Expand-Archive "$addons\qh.zip" -DestinationPath "$addons"
		  Copy-Item "$qh" "$addons\QuestHelper" -Recurse -Force
		  Remove-Item "$addons\qh.zip"
		  Remove-Item "$addons\questhelper-master" -Recurse -Force  
		 }
	 '7' {
		  Write-Host '=================== Installing Skada ===================='
		  Invoke-Webrequest "$github/bkader/Skada-WoTLK/archive/refs/heads/main.zip" -Out "$addons\skada.zip"
		  $skada = "$addons\Skada-WoTLK-main\Skada*"
		  Expand-Archive "$addons\skada.zip" -DestinationPath "$addons"
		  Copy-Item "$skada" "$addons" -Recurse -Force
		  Remove-Item "$addons\skada.zip"
		  Remove-Item "$addons\Skada-WoTLK-main" -Recurse -Force
		 }
     '8' {
		  Write-Host '========= Installing AuctionHouseDepositFixer ==========='
		  Invoke-Webrequest "$github/Wrath-AddOns/AuctionHouseDepositFixer/archive/refs/heads/master.zip" -Out "$addons\ahdepfix.zip"
		  $ahdepfix = "$addons\AuctionHouseDepositFixer-master\AuctionHouseDepositFixer"
		  Expand-Archive "$addons\ahdepfix.zip" -DestinationPath "$addons"
		  Copy-Item "$ahdepfix" "$addons" -Recurse -Force
		  Remove-Item "$addons\AuctionHouseDepositFixer-master" -Recurse -Force
		  Remove-Item "$addons\ahdepfix.zip"
		 }
	'l' {
	 Get-ChildItem $addons | Format-Wide -Column 5
	 pause
	}
	'q'  {
         return
		 }
 }

do
 {
     Show-Menu
     $selection = Read-Host "Please make a selection or Q to exit"
     switch ($selection)
     {
     '1' {
		  Write-Host '=============== Installing AtlasLoot ==================='
		  Invoke-Webrequest "$github/Wrath-AddOns/AtlasLoot_ChromieCraft/archive/refs/heads/master.zip" -Out "$addons\atlasloot.zip"
		  $atlasloot = "$addons\AtlasLoot_ChromieCraft-master\AtlasLoot*"
		  Expand-Archive "$addons\atlasloot.zip" -DestinationPath "$addons"
		  Copy-Item "$atlasloot" "$addons" -Recurse -Force
		  Remove-Item "$addons\AtlasLoot_ChromieCraft-master" -Recurse -Force
		  Remove-Item "$addons\atlasloot.zip"
		 } 
	 '2' {  
		  Write-Host '================= Installing DBM ========================'
		  Invoke-Webrequest "$github/balleny/DBM/archive/refs/heads/main.zip" -Out "$addons\dbm.zip"
		  $dbm = "$addons\DBM-main\DBM-*"
		  Expand-Archive "$addons\dbm.zip" -DestinationPath "$addons"
		  Copy-Item "$dbm" "$addons" -Recurse -Force
		  Remove-Item "$addons\DBM-main" -Recurse -Force
		  Remove-Item "$addons\dbm.zip"
		 } 
  	 '3' {
          Write-Host '================== Installing ElvUI ====================='
		  Invoke-Webrequest "$github/ElvUI-WotLK/ElvUI/archive/refs/heads/master.zip" -Out "$addons\elvui.zip"
		  $elvui = "$addons\ElvUI-master\ElvUI*"
		  Expand-Archive "$addons\elvui.zip" -DestinationPath "$addons"
		  Copy-Item "$elvui" "$addons" -Recurse -Force
		  Remove-Item "$addons\elvui.zip"
		  Remove-Item "$addons\ElvUI-master" -Recurse -Force
		 } 
  	 '4' {
          Write-Host '============ Installing ElvUI AddonSkins ================'
		  Invoke-Webrequest "$github/ElvUI-WotLK/ElvUI_AddOnSkins/archive/refs/heads/master.zip" -Out "$addons\elvui.zip"
		  $elvui = "$addons\ElvUI_AddOnSkins-master\ElvUI*"
		  Expand-Archive "$addons\elvui.zip" -DestinationPath "$addons"
		  Copy-Item "$elvui" "$addons" -Recurse -Force
		  Remove-Item "$addons\elvui.zip"
		  Remove-Item "$addons\ElvUI_AddOnSkins-master" -Recurse -Force
		 }
  	 '5' {
          Write-Host '============ Installing ElvUI Enhanced ================'
		  Invoke-Webrequest "$github/ElvUI-WotLK/ElvUI_Enhanced/archive/refs/heads/master.zip" -Out "$addons\elvui.zip"
		  $elvui = "$addons\ElvUI_Enhanced-master\ElvUI*"
		  Expand-Archive "$addons\elvui.zip" -DestinationPath "$addons"
		  Copy-Item "$elvui" "$addons" -Recurse -Force
		  Remove-Item "$addons\elvui.zip"
		  Remove-Item "$addons\ElvUI_Enhanced-master" -Recurse -Force
		 }		 
	 '6' {
		  Write-Host '=================== Installing QuestHelper ===================='
		  Invoke-Webrequest "$github/zorbathut/questhelper/archive/refs/heads/master.zip" -Out "$addons\qh.zip"
		  $qh = "$addons\questhelper-master\*"
		  Expand-Archive "$addons\qh.zip" -DestinationPath "$addons"
		  Copy-Item "$qh" "$addons\QuestHelper" -Recurse -Force
		  Remove-Item "$addons\qh.zip"
		  Remove-Item "$addons\questhelper-master" -Recurse -Force  
		 }
	 '7' {
		  Write-Host '=================== Installing Skada ===================='
		  Invoke-Webrequest "$github/bkader/Skada-WoTLK/archive/refs/heads/main.zip" -Out "$addons\skada.zip"
		  $skada = "$addons\Skada-WoTLK-main\Skada*"
		  Expand-Archive "$addons\skada.zip" -DestinationPath "$addons"
		  Copy-Item "$skada" "$addons" -Recurse -Force
		  Remove-Item "$addons\skada.zip"
		  Remove-Item "$addons\Skada-WoTLK-main" -Recurse -Force
		 }
     '8' {
		  Write-Host '========= Installing AuctionHouseDepositFixer ==========='
		  Invoke-Webrequest "$github/Wrath-AddOns/AuctionHouseDepositFixer/archive/refs/heads/master.zip" -Out "$addons\ahdepfix.zip"
		  $ahdepfix = "$addons\AuctionHouseDepositFixer-master\AuctionHouseDepositFixer"
		  Expand-Archive "$addons\ahdepfix.zip" -DestinationPath "$addons"
		  Copy-Item "$ahdepfix" "$addons" -Recurse -Force
		  Remove-Item "$addons\AuctionHouseDepositFixer-master" -Recurse -Force
		  Remove-Item "$addons\ahdepfix.zip"
		 }
	'l' {
	Get-ChildItem $addons | Format-Wide -Column 5	
	pause
	}		 
	'q'  {
         return
		 }
	 }
     pause
 }
 until ($selection -eq 'q')