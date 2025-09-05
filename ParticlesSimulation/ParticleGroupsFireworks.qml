import QtQuick 2.12
import QtQuick.Particles 2.12

Rectangle{
    id: root
    width: parent.width; height:  parent.height
    color: "#1f1f1f"
    property bool tracer: false

    ParticleSystem{
        id:particleSystem
    }

    ImageParticle{
        id: smokePainter
        system: particleSystem
        groups: ['smoke']
        source: "assets/particle.png"
        alpha: 0.3
        entryEffect:  ImageParticle.None
    }
    ImageParticle{
        id: rocketPainter
        system: particleSystem
        groups: ['rocket']
        source: "assets/minecraft_rocket.png"
        entryEffect: ImageParticle.None
    }
    ImageParticle {
        id: sparklePainter
        system: particleSystem
        groups: ['sparkle']
        color: 'red'
        colorVariation: 0.6
        source: "assets/star.png"
        alpha: 0.3
    }

    Emitter {
            id: rocketEmitter
            anchors.bottom: parent.bottom
            width: parent.width; height: 40
            system: particleSystem
            group: 'rocket'
            emitRate: 2
            maximumEmitted: 8
            lifeSpan: 4800
            lifeSpanVariation: 400
            size: 128 / 2
            velocity: AngleDirection { angle: 270; magnitude: 150 * 2; magnitudeVariation: 10 }
            acceleration: AngleDirection { angle: 90; magnitude: 50 }
            Tracer { color: 'red'; visible: root.tracer }
        }

    TrailEmitter {
            id: smokeEmitter
            system: particleSystem
            group: 'smoke'
            follow: 'rocket'
            size: 16
            sizeVariation: 8
            emitRatePerParticle: 16
            velocity: AngleDirection { angle: 90; magnitude: 100; angleVariation: 15 }
            lifeSpan: 200
            Tracer { color: 'blue'; visible: root.tracer }
        }

    Friction{
        groups: ['rocket']
        anchors.top: parent.top
        width: parent.width; height: 300
        system: particleSystem
        threshold: 5
        factor: 0.9
        Tracer {color: 'green'; visible: root.tracer}
    }

    Turbulence{
        groups: ['rocket']
        anchors.bottom:  parent.bottom
        width: parent.width; height: 160
        system: particleSystem
        strength: 25
        Tracer {color: 'blue'; visible: root.tracer}
    }

    GroupGoal{
        id: rockeChanger
        anchors.top: parent.top
        width: parent.width; height: parent.height / 3
        system: particleSystem
        groups: ['rocket']
        goalState: 'explosion'
        jump: true
        Tracer { color: 'blue'; visible: root.tracer }
    }

    ParticleGroup{
        name: 'explosion'
        system: particleSystem

        TrailEmitter{
            id: explosionEmitter
            anchors.fill: parent
            group: 'sparkle'
            follow: 'rocket'
            lifeSpan: 750
            emitRatePerParticle: 200
            size: 32
            velocity: AngleDirection { angle: -90; angleVariation: 180; magnitude: 50}
        }
        TrailEmitter {
            id: explosion2Emitter
            anchors.fill: parent
            group: 'sparkle'
            follow: 'rocket'
            lifeSpan: 250
            emitRatePerParticle: 100
            size: 32
            velocity: AngleDirection { angle: 90; angleVariation: 15; magnitude: 400 }
        }
    }
}
