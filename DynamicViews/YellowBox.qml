// YellowBox.qml

import QtQuick 2.5
Rectangle{
    id: recta
    width: 100
    height: width/2
    color: "#fce82d"
    border.color: Qt.lighter(color)
    property alias text: label.text

    Text {
        id: label
        height: recta.height
        width: recta.width
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        font.pixelSize: 12
        color: "#333"
    }
}
