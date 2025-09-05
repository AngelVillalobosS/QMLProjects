// AffectinParticlesTurbulence.qml
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
        emitRate: 10 * 1
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
            targetVariation: 100 / 3
            magnitude: 100
        }
    }

    // width:  parent.width / 3; height: parent.height / 2

    Wander{
        anchors.centerIn: parent
        width:  320; height: width / 8
        system: particleSystem

        affectedParameter: Wander.Position // Select the parameter to change, velocity; position or acceleration
        pace: 200   // maximun attribute changes per second
        yVariance: 240 //Changes the value of the y position

        Tracer{ color: "#000" }
    }

    ImageParticle {
        id: image
        source: "assets/minecraft_potion.png"
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
