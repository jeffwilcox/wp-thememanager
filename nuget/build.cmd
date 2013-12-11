@echo off
pushd %~dp0
pushd ..\src\JeffWilcox.PhoneThemeManager\
msbuild /p:Configuration=Release
popd
mkdir .\PhoneThemeManager\lib
mkdir .\PhoneThemeManager\lib\windowsphone8
copy ..\bin\release\*Manager*.* .\PhoneThemeManager\lib\windowsphone8\
mkdir .\PhoneThemeManager.Source\content
copy ..\src\JeffWilcox.PhoneThemeManager\ThemeManager.cs .\PhoneThemeManager.Source\content\
nuget pack PhoneThemeManager\PhoneThemeManager.nuspec -o .\
nuget pack PhoneThemeManager.Source\PhoneThemeManager.Source.nuspec -o .\
echo Don't forget to publish if need be!
