pyinstaller --exclude-module PIL --onedir -y -i "./condenser_icon.png" "./condenser.py"
mkdir -p dist/condenser/utils/ffmpeg
cp $(which ffmpeg) dist/condenser/utils/ffmpeg/ffmpeg
cp $(which ffprobe) dist/condenser/utils/ffmpeg/ffprobe
cp config.json dist/condenser/config.json
grep -v '^!\[Condenser\].*' README.md | grep '^\[!\[codecov\].*' > dist/condenser/README.txt
rm dist/condenser/_internal/_bz2.pyd
rm dist/condenser/_internal/_hashlib.pyd
rm dist/condenser/_internal/_socket.pyd
rm dist/condenser/_internal/_lzma.pyd
rm dist/condenser/_internal/unicodedata.pyd
rm dist/condenser/_internal/libcrypto-3.dll
rm dist/condenser/_internal/ucrtbase.dll
rm dist/condenser/_internal/api-ms-win-*
