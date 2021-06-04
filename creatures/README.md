Requirements
Written in Processing 3.5.4

No special libraries required.

Operation
Run magnifier.pde in Processing.

Move the mouse cursor to change the magnified area. Use the mouse wheel to alter size of area magnified. Moving cursor to the top left will automatically reposition the magnified box to the top right.

// Screengrab


You could use a 'docs' folder inside a project for any ancilliary material you want to include - just be sure to either embed it in your README markdown, or link to the file from the documentatino somehow.

Design notes
I don't know if I'm happy with how zoom works: changing the zoom level whilst keeping the size of each magnified pixel constant was challenging, and even in this version there's still some jumping around.

I've put the magnified area top-left; originally, I had the magnifier follow the mouse around, more like a 'magnifying glass', but it didn't seem very satisfactory. I think this is a bit better, although I still think it leaves something to be desired.
