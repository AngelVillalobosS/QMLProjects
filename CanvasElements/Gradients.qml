// Gradients.qml
import QtQuick 2.0

Canvas {
    id:root
    width: parent.width
    height: width

    onPaint: {
        var ctx = getContext("2d")

        var gradient = ctx.createLinearGradient(100,0 , 100,200)
        gradient.addColorStop(0, "blue")
        gradient.addColorStop(0.5, "lightSteelBlue")
        ctx.fillStyle = gradient
        ctx.fillRect(50,50 , 100,100)
    }
}
