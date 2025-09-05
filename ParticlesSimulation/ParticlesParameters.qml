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
        anchors.centerIn: parent
        width: parent.width - image.width; height: parent.height - image.height
        system: particleSystem
        emitRate: 10
        lifeSpan: 1000
        lifeSpanVariation: 500
        size: 16
        endSize: parent.width / 15
//        Tracer { color: 'green' }
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
