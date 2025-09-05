import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    DarkSquare {
        id: root
        width: 120
        height: 240

        Column {
            id: row
            anchors.centerIn: parent
            spacing: 8
            RedSquare { }
            GreenSquare { width: 96 }
            BlueSquare { }
        }
    }

}
