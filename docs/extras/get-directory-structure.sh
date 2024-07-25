#Run on windows powershell to get directory structure
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



# Get directory structure as well as files content
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
        } else {
            # Read and output the file content
            $fileContent = Get-Content -Path $item.FullName -Raw
            Write-Output "$Indent    └── Content:"
            Write-Output "$Indent        $fileContent"
        }
    }
}

# Start the directory listing from the current directory excluding 'node_modules', 'dist', 'docs', 'build', '.gitattributes', '.gitignore', 'package-lock.json', and 'README.md'
Get-FormattedDirectoryStructure -Path . -Exclude 'node_modules', 'dist', 'docs', 'build', '.gitattributes', '.gitignore', 'package-lock.json', 'README.md'