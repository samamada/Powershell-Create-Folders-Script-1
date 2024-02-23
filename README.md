# PowerShell Folder Creation Script

## Overview

This PowerShell script is designed to automate the creation of multiple folders using a `do` loop and variables. The script allows you to specify the number of folders to create and sets up a naming convention based on a prefix, pad, and an incrementing index.

## Usage

1. **Clone Repository:**
   ```bash
   git clone https://github.com/samamada/Powershell-Create-Multi-Folder-Script-1.git
   ```

2. **Navigate to Script Directory:**
   ```bash
   cd Powershell-Create-Multi-Folder-Script-1
   ```

3. **Modify Script Parameters:**
   Open the `CreateFolders.ps1` script in a text editor and adjust the following variables:
   - `$intfolders`: Set the total number of folders to be created.
   - `$intPad`: Set the padding for the folder index.
   - `$strPrefix`: Set the prefix for folder names.

4. **Run the Script:**
   Execute the script in a PowerShell environment.
   ```powershell
   .\CreateFolders.ps1
   ```

5. **Review Output:**
   The script creates folders in the specified directory (`C:` in this example) based on the defined naming convention.

## Script Details

- The script uses a `do` loop to iterate and create folders according to the specified conditions.
- It checks the index value to determine whether to include padding in the folder name.
- Adjust the conditions and parameters to suit your specific folder creation requirements.

## Example

```powershell
# Setting up the variables
$intfolders = 10
$intPad = 0
$i = 1
New-Variable -Name strPrefix -Value "testfolder" -Option constant

# Creating the loop statement
Do {
    # If condition
    if ($i -lt 10) {
        New-Item -Path C: -Name $strPrefix$intPad$i -Type directory
    }
    # When condition is false
    else {
        New-Item -Path C: -Name $strPrefix$i -Type directory
    }

    # Incrementing index
    $i++
} until ($i -eq $intfolders+1)
```

## License

This script is licensed under the [MIT License](LICENSE), allowing you to freely use and modify it for your needs.

Feel free to contribute, report issues, or suggest improvements!

Happy scripting!
```
