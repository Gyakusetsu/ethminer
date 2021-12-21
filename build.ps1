
# ./build.ps1 -Location ./build -Tag v0.19.8
Param(
    [Parameter()]
    $Location = './build'

    [Parameter(Mandatory)]
    $Tag
)

git tag $Tag

Remove-Item $Location -Recurse
cd build
cmake .. -G "Visual Studio 15 2017 Win64"
cmake --build . --config Release --target package
cp ethminer.zip ../ethminer.zip
