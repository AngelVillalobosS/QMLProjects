import QtQuick 2.0

Canvas {
    width: parent.width
    height: parent.height

    onPaint: {
        var ctx = getContext("2d")
        ctx.globalCompositionOperation = "xor"
        ctx.fillStyle = "#33a9ff"

        for(var i=0; i<40; i++){
            ctx.beginPath()
            ctx.arc(Math.random()*480, Math.random() * 200, 20, 0, 2 * Math.PI)
            ctx.closePath()
            ctx.fill()
        }
    }
}
