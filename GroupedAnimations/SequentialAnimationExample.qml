// SequentialAnimationExample.qml
import QtQuick 2.0

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
        x:20 ; y: root.height - height
//        text: 'rocket'
        source: "assets/ufo_ico.png"
        onClicked: anim.restart()
    }

    SequentialAnimation{
        id: anim

        NumberAnimation {
            target: ufo
            property: "y"
            to: 20
            duration: root.duration * 0.6
        }
        NumberAnimation{
            target: ufo
            property: "x"
            to: 400
            duration: root.duration * 0.4
        }
    }
}
