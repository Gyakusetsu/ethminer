
# ./build.ps1 -Location ./build -Tag v0.19.8
Param(
    [Parameter()]
    [AllowNull()]
    [string]$Location = "./build",

    [Parameter(Mandatory)]
    [string]$Tag
)

$ZipFile = "ethminer.zip"
$VsVersion = "Visual Studio 15 2017 Win64"

git tag $Tag

Remove-Item $Location -Recurse
Remove-Item $ZipFile -Recurse

mkdir -p $Location
cd $Location
cmake .. -G $VsVersion
cmake --build . --config Release --target package
cp $ZipFile ../$ZipFile
cd ..
