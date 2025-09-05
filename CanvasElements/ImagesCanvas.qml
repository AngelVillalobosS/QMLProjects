import QtQuick 2.0

Canvas {
    width: 460
    height: width

    onPaint: {
        var ctx = getContext("2d")

        // Draw an image
        ctx.drawImage('assets/ball.png', 10, 10)

        // Store current context setup
        ctx.save()
        ctx.strokeStyle = "#ff2a68"

        // create a triangle as clip region
        ctx.beginPath()
        ctx.moveTo(110, 10)
        ctx.lineTo(155, 10)
        ctx.lineTo(135, 55)
        ctx.closePath()

        // Translate coordinate system
        ctx.clip() // Create a clip from the path

        // Draw an image clip applied
        ctx.drawImage('assets/ball.png', 100, 10)

        // Draw a stroke around Path
        ctx.stroke()

        // Restore previous context
        ctx.restore()

    }

    Component.onCompleted: {
        loadImage("assets/ball.png")
    }
}
