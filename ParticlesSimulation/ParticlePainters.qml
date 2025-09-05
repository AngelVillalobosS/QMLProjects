import QtQuick 2.12
import QtQuick.Particles 2.12

Rectangle {
    id: root
    width: parent.width; height: parent.height
    color: "#1f1f1f"

    property var images: [
            "box_blue.png",
            "box_red.png",
            "box_green.png",
            "circle_blue.png",
            "circle_red.png",
            "circle_green.png",
            "triangle_blue.png",
            "triangle_red.png",
            "triangle_green.png",
            "creeper_head.jpg",

        ]

    ParticleSystem {
        id: particleSystem
    }

    Emitter {
        id: emitter
        anchors.fill: root
        anchors.margins: 32
        system: particleSystem
        emitRate: 4
        lifeSpan: 2000
    }

    ItemParticle{
        id: particle
        system: particleSystem
        delegate: itemDelegate
    }

    Component{
        id: itemDelegate
        Item{
            id: container
            width: 32 * Math.ceil(Math.random() * 3); height: width
            Image {
                anchors.fill: parent
                anchors.margins: 4
                source: 'assets/' + images[Math.floor(Math.random() * 10)]
            }
        }
    }
}
