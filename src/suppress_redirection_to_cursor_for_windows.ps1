# This script is used to suppress the redirection to cursor when using the 'code' command in the terminal.


$localAppData = [System.Environment]::GetFolderPath('LocalApplicationData')
$target_dir = "$localAppData\Programs\cursor\resources\app\bin"

echo $target_dir

if (!(Test-Path $target_dir)) {
    echo "Directory does not exist"
    exit
}

# Windows
if (Test-Path "$target_dir\code.cmd") {
    echo "Renaming code.cmd to _code.cmd"
    Rename-Item -Path "$target_dir\code.cmd" -NewName "_code.cmd"
} else {
    echo "'code.cmd' does not exist"
}

# WSL
if (Test-Path "$target_dir\code") {
    echo "Renaming code to _code"
    Rename-Item -Path "$target_dir\code" -NewName "_code"
} else {
    echo "'code' does not exist"
}
