import QtQuick 2.12
import QtQuick.Window 2.12

Window{
    width: 640
    height: 480
    visible: true
    title: qstr("Hello World")

    Image {
        id: root
        source: "images/background.png"

        Image {
            id: pole
            source: "images/pole.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
        }

        Image {
            id: wheel
            anchors.centerIn: parent
            source: "images/pinwheel.png"

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

