# testRealtimeWooey
This test need for testing of realtime in [Wooey](https://github.com/wooey/Wooey).
It is work on Linux x64 in home folder. It use miniconda3 x86_64 with wooeytest environment.
List of folders which are useing:
```
~/myproject
~/slowPrint
~/miniconda3
```
If you have your data in these folders, or if you have 'wooeytest' environment in conda, edit paths in script.
# Run
```
git clone https://github.com/abicorios/testRealtimeWooey
cd testRealtimeWooey
chmod +x testRealtimeWooey.sh
./testRealtimeWooey.sh
```
Open 127.0.0.1:8000 and run 'a' script. Check, is it realtime.
For stoping use Ctrl+C in console.
