import QtQuick 2.12

Canvas {
    width: parent.width
    height: parent.height

    property var operation: [
        'source-over', 'source-in', 'source-over',
        'source-atop', 'destination-atop', 'lighter', 'copy', 'xor', 'qt-clear', 'qt-destionation',
        'qt-multiply', 'qt-screen', 'qt-overlay', 'qt-darken',
        'qt-lighten', 'qt-color-dodge', 'qt-difference',
        'qt-excusion'
    ]

    onPaint:{
        var ctx = getContext('2d')

        for(var i=0; i<operation.legth; i++){
            var dx = Math.floor(i%6)*100
            var dy = Math.flor(i/6)*100

            ctx.save()
            ctx.fillStyle = "#33a9ff"
            ctx.fillRect(10 + dx, 10 + dy, 60, 60)
            ctx.globalCompositeOperation = root.operation[i]
            ctx.fillStyle = '#ff33a9'
            ctx.globalAlpha = 0.75
            ctx.beginPath()
            ctx.arc(60+dx, 60+dy, 30, 0, 2*Math.PI)
            ctx.closePath()
            ctx.fill()
            ctx.restore()
        }
    }
}
