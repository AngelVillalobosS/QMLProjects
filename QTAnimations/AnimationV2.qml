import QtQuick 2.12

Item{
    //First Object
    ClickableImageV2{
        id: slime
        scale: 0.50
        x: (root.width-width)/2; y: root.height-height
        source: "file://home/practicas/Projects/QTAnimations/assets/blue_slime.png"
        text: "behavior on property"
        Behavior on y{
            NumberAnimation{ duration: 4000}
        }

        onClicked: y = 40 + Math.random()*(205-40)
    }


    //Second Object
    ClickableImageV2{
        id: log_item
        scale: 0.40
        x: root.width-width-40; y: root.height - height
        source: "file://home/practicas/Projects/QTAnimations/assets/minecraft_log.jpeg"
        onClicked: anim.start()
        //    onClicked: anim.restart()
        text:  "Standalone animation"

        NumberAnimation{
            id: anim
            target: log_item
            properties: "y"

            to: 40 + (Math.random()*(205-40))
            duration: 4000
        }
    }

    //Third Object
    ClickableImageV2 {
        id: greenBox
        scale: 0.2
        x: -150; y: root.height-height
        source: "file://home/practicas/Projects/QTAnimations/assets/box_green.jpg"
        text: "animation on property"
        NumberAnimation on y {
            to: 40; duration: 4000
        }
    }


}




