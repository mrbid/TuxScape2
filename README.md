![Screenshot of the TuxScape2 game](https://raw.githubusercontent.com/mrbid/TuxScape2/main/screenshot.png)

- **Snapcraft:** https://snapcraft.io/tuxscape2
- **Flathub:** https://flathub.org/apps/com.voxdsp.TuxScape2
- **Play Online:**: https://gamejolt.com/games/tuxscape2/903148
- **Windows:**: https://github.com/mrbid/TuxScape2/releases



## build
```
sudo apt install --assume-yes libglfw3-dev libglfw3
sudo apt install --assume-yes tcc
sudo apt install --assume-yes upx-ucl
sudo apt install --assume-yes mingw-w64
make
./release/TuxScape2_linux
```
or
```
make deps
make test
```
You don't need [UPX](https://upx.github.io/) but if you don't have the package you can download the binary from [here](https://github.com/upx/upx/releases).

## attribution
* All assets generated using [LUMA GENIE](https://lumalabs.ai/genie).
