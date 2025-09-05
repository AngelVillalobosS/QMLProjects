import QtQuick 2.12
import QtQuick.Particles 2.12

Rectangle {
    id: root
    width: parent.width; height: parent.height
    color: "#1f1f1f"

    ParticleSystem {
        id: particleSystem
    }

    Emitter {
        id: emitter
        anchors.left: parent.left
        anchors.verticalCenter:  parent.verticalCenter
        width: 1; height: 1
        system: particleSystem
        emitRate: 10
        lifeSpan: 6400
        lifeSpanVariation: 400
        size: 32
//        endSize: parent.width / 15
        velocity: PointDirection{
            x: 100
            y: 0
            xVariation: 0
            yVariation: 100 / 6
        }
        acceleration: TargetDirection{
            targetX: 100
            targetY: 0
            targetVariation: 100 / 6
            magnitude: 100
        }
    }

    ImageParticle {
        id: image
        source: "assets/creeper_head.jpg"
        system: particleSystem
        color: "#00d9ff"
        colorVariation: 0.8
        rotation: 0
        rotationVariation: 45 //The rotation is in Degrees
        rotationVelocity: 15
        rotationVelocityVariation: 15
        entryEffect: ImageParticle.Scale
    }
}
