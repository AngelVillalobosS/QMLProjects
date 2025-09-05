import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    BrightSquare {
        id: root
        width: 160
        height: 160

        Grid {
            id: grid
            rows: 2
            columns: 2
            anchors.centerIn: parent
            spacing: 8
            RedSquare { }
            RedSquare { }
            RedSquare { }
            RedSquare { }
        }

    }
}
