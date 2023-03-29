$images = Get-ChildItem .\raw-images
foreach ($image in $images) {
    Write-Output("######## ########")
    Write-Output("Encoding " + $image.FullName)
    Write-Output("######## ########")
    Copy-Item $image .\images -Force
    .\jxl-x64-windows-static\cjxl.exe $image.FullName ("images\" + $image.BaseName+".jxl") -p
}