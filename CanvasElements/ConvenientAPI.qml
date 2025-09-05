// convenient.qml
import QtQuick 2.12

Canvas {
    id: root
    width: 120; height: width
    onPaint: {
        var ctx = getContext("2d")
        ctx.fillStyle = 'green'
        ctx.strokeStyle = 'blue'
        ctx.lineWitdh = 4

        //Draw a filles rectangle
        ctx.fillRect(20, 20, 80, 80)
        // Cut our an inner Rectangle
        ctx.clearRect(30, 30, 60, 60)
        // stroke a border from top-left to
        // inner center of the larger rectangle
        ctx.strokeRect(20,20, 40,40)

        //Note: I think that the strokeRect work in the following way (TLC, BLC, TRC, BRC)
    }
}
