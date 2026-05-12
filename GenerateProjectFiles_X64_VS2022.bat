@echo on

IF NOT EXIST build mkdir build
pushd build

echo "Rebuilding Kodgen x64 Project files..."

cmake .. -G "Visual Studio 17 2022" -DBUILD_TESTING=OFF -A x64
IF %ERRORLEVEL% NEQ 0 (
  echo "Error generating Kodgen 64-bit project files"
  goto failure
)

popd
EXIT \B 0

:failure
pause
EXIT \B 1