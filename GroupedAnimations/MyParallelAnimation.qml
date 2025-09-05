import QtQuick 2.12

BrightSquare {
    id: root
    width: 600
    height: 400

    property int duration: 3000
    property Item ufo: ufo

    Image{
        anchors.fill: parent
        source: "assets/ufo_background.jpg"
    }

    ClickableImageV3{
        id: ufo
        x:20 ; y: root.height-height
        source: "assets/ufo_ico.png"
        onClicked: anim.restart()
    }

    ParallelAnimation{
        id: anim
        NumberAnimation{
            target: ufo
            properties: "y"
            to: 20
            duration: root.duration
        }
        NumberAnimation{
            target: ufo
            properties: "x"
            to: 160
            duration: root.duration
        }
    }
}
