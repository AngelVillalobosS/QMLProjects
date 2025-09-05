import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    BrightSquare {
        id: root
        width: 400; height: 120

        Row {
            id: row
            anchors.centerIn: parent
            spacing: 20
            BlueSquare { }
            GreenSquare { }
            RedSquare { }
        }
    }
}
