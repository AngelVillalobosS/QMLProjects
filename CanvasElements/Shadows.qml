import QtQuick 2.0

Canvas {
    id: canvas
    width: 400
    height: width/2

    onPaint: {
        var ctx = getContext("2d")

        //Setup a background
        ctx.strokeStyle = "#333"
        ctx.fillRect(0,0,canvas.width,canvas.height);

        // Setup a blue shadow
        ctx.shadowColor = "#2ed5fa";
        ctx.shadowOffsetX = 2;
        ctx.shadowOffsetY = 2;
        ctx.shadowBlur = 10;

        // Render GreenText
        ctx.font = 'bold 80px Ubuntu';
        ctx.fillStyle = "#24d12e"
        ctx.fillText("Canvas!", 30, 100)
    }
}
