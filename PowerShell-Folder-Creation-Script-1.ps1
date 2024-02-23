#POWERSHELL PROJECT 1:
#This Script creates multiple folders using a do loop and variable

#SETTING UP THE VARIABLES

$intfolders = 10
$intPad = 0
$i = 1
New-Variable -Name strPrefix -Value "testfolder" -Option constant

#CREATING THE LOOP STATEMENT

Do {
    #If condition

    if ($i -lt 10) {

    New-Item -Path C: -Name $strPrefix$intPad$i -Type directory
    }

    #when Condition is False

    else {
    New-Item -Path C: -Name $strPrefix$i -Type directory
    }

    #$i to increment by 1

    $i++
    }

    #STOPPING THE LOOP

Until ($i -eq $intfolders+1)

#Thank you :)