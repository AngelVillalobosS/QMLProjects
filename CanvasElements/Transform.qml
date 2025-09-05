// Transform.qml
import QtQuick 2.0

Canvas {
    id: root
    width: 240; height: 120
    onPaint: {
        var ctx = getContext("2d");

        ctx.lineWidth = 4
        ctx.strokeStyle = "lightBlue";

        // Translate x/y coordinate system
        ctx.translate(root.width / 2, root.height / 2);

        // Draw path
        ctx.beginPath();
        ctx.rect(-20, -20, 40, 40);
        ctx.stroke();

        // Rotate coordinate system
        ctx.rotate(Math.PI / 4);
        ctx.strokeStyle = "lightGreen";

        // Draw Path
        ctx.beginPath();
        ctx.rect(-20, -20, 40, 40);
        ctx.stroke();
    }
}
