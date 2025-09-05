import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Layout Flow")

    BrightSquare {
        id: root
        width: 160
        height: 160

        Flow {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 20
            RedSquare { }
            BlueSquare { }
            GreenSquare { }
        }
    }
}
