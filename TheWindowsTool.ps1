################################
#       The Windows Tool       #
#       By: MrBignose5866      #
#          Version: 1.0        # 
################################

Add-Type -AssemblyName System.Windows.Forms

$FormObject = [System.Windows.Forms.Form]
$LabelObject = [System.Windows.Forms.Label]
$ButtonObject = [System.Windows.Forms.Button]

$ProgramNameTitle = New-Object $FormObject
$ProgramNameTitle.Text = 'The Windows Tool By MrBignose5866'
$ProgramNameTitle.ClientSize = '1920,1080'
$ProgramNameTitle.AutoSize = $true
$ProgramNameTitle.BackColor = 'White'

$ProgramInstallation = New-Object $LabelObject
$ProgramInstallation.Text = 'Program Installation'
$ProgramInstallation.AutoSize = $true
$ProgramInstallation.Font = 'Microsoft Sans Serif,24'
$ProgramInstallation.Location = New-Object System.Drawing.Point (40,40)

$Chrome = New-Object $ButtonObject
$Chrome.Text = 'Google Chrome'
$Chrome.AutoSize = $true
$Chrome.Font = 'Microsoft Sans Serif,12'
$Chrome.Location = New-Object System.Drawing.Point (40,100)

$FireFox = New-Object $ButtonObject
$FireFox.Text = 'Mozilla Firefox'
$FireFox.AutoSize = $true
$FireFox.Font = 'Microsoft Sans Serif,12'
$FireFox.Location = New-Object System.Drawing.Point (40,140)

$Brave = New-Object $ButtonObject
$Brave.Text = 'Brave'
$Brave.AutoSize = $true
$Brave.Font = 'Microsoft Sans Serif,12'
$Brave.Location = New-Object System.Drawing.Point (40,180)

$7zip = New-Object $ButtonObject
$7zip.Text = '7-Zip'
$7zip.AutoSize = $true
$7zip.Font = 'Microsoft Sans Serif,12'
$7zip.Location = New-Object System.Drawing.Point (180,100)

$NotepadPlusPlus = New-Object $ButtonObject
$NotepadPlusPlus.Text = 'Notepad++'
$NotepadPlusPlus.AutoSize = $true
$NotepadPlusPlus.Font = 'Microsoft Sans Serif,12'
$NotepadPlusPlus.Location = New-Object System.Drawing.Point (180,140)

$GIMP = New-Object $ButtonObject
$GIMP.Text = 'GIMP'
$GIMP.AutoSize = $true
$GIMP.Font = 'Microsoft Sans Serif,12'
$GIMP.Location = New-Object System.Drawing.Point (180,180)

$ShareX = New-Object $ButtonObject
$ShareX.Text = 'ShareX'
$ShareX.AutoSize = $true
$ShareX.Font = 'Microsoft Sans Serif,12'
$ShareX.Location = New-Object System.Drawing.Point (300,100)

$VLC = New-Object $ButtonObject
$VLC.Text = 'VLC Media Player'
$VLC.AutoSize = $true
$VLC.Font = 'Microsoft Sans Serif,12'
$VLC.Location = New-Object System.Drawing.Point (300,140)

$GitHub = New-Object $ButtonObject
$GitHub.Text = 'GitHub Desktop'
$GitHub.AutoSize = $true
$GitHub.Font = 'Microsoft Sans Serif,12'
$GitHub.Location = New-Object System.Drawing.Point (300,180)

$VSCode = New-Object $ButtonObject
$VSCode.Text = 'Visual Studio Code'
$VSCode.AutoSize = $true
$VSCode.Font = 'Microsoft Sans Serif,12'
$VSCode.Location = New-Object System.Drawing.Point (460,100)

$VisualStudio2022 = New-Object $ButtonObject
$VisualStudio2022.Text = 'Visual Studio Community 2022'
$VisualStudio2022.AutoSize = $true
$VisualStudio2022.Font = 'Microsoft Sans Serif,12'
$VisualStudio2022.Location = New-Object System.Drawing.Point (460,140)

$PyCharm = New-Object $ButtonObject
$PyCharm.Text = 'PyCharm Community Edition'
$PyCharm.AutoSize = $true
$PyCharm.Font = 'Microsoft Sans Serif,12'
$PyCharm.Location = New-Object System.Drawing.Point (460,180)

$Steam = New-Object $ButtonObject
$Steam.Text = 'Steam'
$Steam.AutoSize = $true
$Steam.Font = 'Microsoft Sans Serif,12'
$Steam.Location = New-Object System.Drawing.Point (720,100)

$Blender = New-Object $ButtonObject
$Blender.Text = 'Blender'
$Blender.AutoSize = $true
$Blender.Font = 'Microsoft Sans Serif,12'
$Blender.Location = New-Object System.Drawing.Point (720,140)

$Discord = New-Object $ButtonObject
$Discord.Text = 'Discord'
$Discord.AutoSize = $true
$Discord.Font = 'Microsoft Sans Serif,12'
$Discord.Location = New-Object System.Drawing.Point (720,180)

$Chrome.Add_Click({
Write-Host "Installing Google Chrome"
winget install Google.Chrome
})

$FireFox.Add_Click({
Write-Host "Installing Mozilla Firefox"
winget install Mozilla.Firefox
})

$Brave.Add_Click({
Write-Host "Installing Brave"
winget install Brave.Brave
})

$7zip.Add_Click({
Write-Host "Installing 7-Zip"
winget install 7zip.7zip
})

$NotepadPlusPlus.Add_Click({
Write-Host "Installing Notepad++"
winget install Notepad++.Notepad++
})

$GIMP.Add_Click({
Write-Host "Installing GIMP"
winget install GIMP.GIMP
})

$ShareX.Add_Click({
Write-Host "Installing ShareX"
winget install ShareX.ShareX
})

$VLC.Add_Click({
Write-Host "Installing VLC Media Player"
winget install VideoLAN.VLC
})

$GitHub.Add_Click({
Write-Host "Installing GitHub Desktop"
winget install GitHub.GitHubDesktop
})

$VSCode.Add_Click({
Write-Host "Installing Visual Studio Code"
winget install Microsoft.VisualStudioCode
})

$VisualStudio2022.Add_Click({
Write-Host "Installing Visual Studio Community 2022"
winget install Microsoft.VisualStudio.2022.Community
})

$PyCharm.Add_Click({
Write-Host "Installing PyCharm Community Edition"
winget install JetBrains.PyCharm.Community
})

$Steam.Add_Click({
Write-Host "Installing Steam"
winget install Valve.Steam
})

$Blender.Add_Click({
Write-Host "Installing Blender"
winget install BlenderFoundation.Blender
})

$Discord.Add_Click({
Write-Host "Installing Discord"
winget install Discord.Discord
})
    
$ProgramNameTitle.Controls.AddRange(@($ProgramInstallation,$Chrome,$FireFox,$Brave,$7Zip,$NotepadPlusPlus,$GIMP,$ShareX,$VLC,$GitHub,$VSCode,$VisualStudio2022,$PyCharm,$Steam,$Blender,$Discord))

$ProgramNameTitle.ShowDialog()