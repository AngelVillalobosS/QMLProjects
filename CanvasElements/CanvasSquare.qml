import QtQuick 2.12

Canvas{
    id: root
    //Canvas size
    width: 200; height: width

//    handler to override for drawing
    onPaint: {
// Get context to draw with
        var ctx = getContext("2d")

        //Setup the stroke

        ctx.lineWidth = 4
        ctx.strokeStyle = "blue"

        //Setup the fill
        ctx.fillStyle = "steelBlue"

        //Begin a new path to draw
        ctx.beginPath()
        // top-left start point
        ctx.moveTo (50, 50)
        // upper line
        ctx.lineTo (150, 50)
        // right line
        ctx.lineTo (150, 150)
        //bottom line
        ctx.lineTo (50, 150)
        // Left line through path closing
        ctx.closePath()
        // Fill using fill style
        ctx.fill()
        // Stroke using line width and stroke style
        ctx.stroke()
    }
}
