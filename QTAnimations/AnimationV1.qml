import QtQuick 2.0

Image {
    id: root
    source: "file://home/practicas/Projects/QTAnimations/assets/background.jpg"

    property int padding : 40
    property int duration: 4000
    property int scale: 0
    property bool running: false

    Image{
        id: box
        scale: 0.5
        x: root.padding;
        y: (root.height-height)/2
        source: "file://home/practicas/Projects/QTAnimations/assets/box_green.jpg"

        NumberAnimation on x{
            to: root.width - box.width - root.padding
            duration: root.duration
            running: root.running
        }
        RotationAnimation on rotation{
            to: 360
            duration: root.duration
            running: root.running
        }

        PropertyAnimation on scale{
            to: root.scale
            duration: root.duration - 300
            running: root.running
        }
        PropertyAnimation  on opacity{
            to: 0
            duration:  root.duration -300
            running: root.running
        }

        MouseArea{
            anchors.fill: parent
            onClicked: root.running = true
        }
    }
}
