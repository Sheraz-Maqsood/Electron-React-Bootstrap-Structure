#Rull on windows powershell
# Function to recursively get items excluding specific directories and format the output
function Get-FormattedDirectoryStructure {
    param (
        [string]$Path,
        [string[]]$Exclude,
        [string]$Indent = ''
    )

    $items = Get-ChildItem -Path $Path | Where-Object { $Exclude -notcontains $_.Name }
    foreach ($item in $items) {
        $isLastItem = $item -eq $items[-1]
        $prefix = if ($isLastItem) { '└── ' } else { '├── ' }
        Write-Output "$Indent$prefix$item"

        if ($item.PSIsContainer) {
            $subIndent = if ($isLastItem) { '    ' } else { '│   ' }
            Get-FormattedDirectoryStructure -Path $item.FullName -Exclude $Exclude -Indent "$Indent$subIndent"
        }
    }
}

# Start the directory listing from the current directory excluding 'node_modules' and 'dist'
Get-FormattedDirectoryStructure -Path . -Exclude 'node_modules', 'dist'
