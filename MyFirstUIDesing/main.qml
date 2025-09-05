import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 500
    height: 300
    title: qsTr("Mi reguilete")

    Image {
        id: root
        source: "file:///home/practicas/Projects/MyFirstUIDesing/images/background.png"

        Image {
            id: pole
            source: "file://home/practicas/Projects/MyFirstUIDesing/images/pole.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
        }

        Image {
            id: wheel
            anchors.centerIn: parent
            source: "file:/home/practicas/Projects/MyFirstUIDesing/images/pinwheel.png"

            Behavior on rotation {
                NumberAnimation{
                    duration: 250
                }
            }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: wheel.rotation += 90
        }
    }

}
