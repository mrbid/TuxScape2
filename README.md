![Screenshot of the TuxScape2 game](https://raw.githubusercontent.com/mrbid/TuxScape2/main/screenshot.png)

*Explore Space, collect all 20 emoji's to reveal 20 cool characters and try flying the other 68 space ships that are randomly dotted around.*

- **Play Online:** https://gamejolt.com/games/tuxscape2/903148
- **Flathub:** https://flathub.org/apps/com.voxdsp.TuxScape2
- **Snapcraft:** https://snapcraft.io/tuxscape2
- **Windows:** https://github.com/mrbid/TuxScape2/releases

## input
```
Mouse Scroll to Zoom In and Out.
Mouse Move to Look Around.
Arrow Keys or WASD to Move Around.
Space and Shift to Ascend and Descend in altitude.
Hold the right mouse button pressed and move around the mouse for the "free look" camera.
'E' to Steal the Nearby Ship.
'C' to Change FOV between 30° and 60°.
```

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
