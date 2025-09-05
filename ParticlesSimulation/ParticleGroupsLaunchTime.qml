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

    Emitter{
        id: rocketEmitter
        anchors.bottom:  parent.bottom
        width: parent.width; height: 40
        system: particleSystem
        group: 'rocket'
        emitRate: 2
        maximumEmitted: 4
        lifeSpan: 4800
        lifeSpanVariation: 400
        size: 32 * 1.5
        velocity: AngleDirection { angle: 270; magnitude: 150; magnitudeVariation: 10 }
        acceleration: AngleDirection { angle: 90; magnitude: 50 }
        Tracer { color: 'red'; visible: root.tracer }
    }

    TrailEmitter{
        id: smokeEmitter
        system: particleSystem
        emitHeight: 1
        emitWidth: 4
        group: 'smoke'
        follow: 'rocket'
        emitRatePerParticle: 96
        velocity: AngleDirection { angle: 90; magnitude: 100; angleVariation: 5 }
        lifeSpan: 200
        size: 16 / 2
        sizeVariation: 4
        endSize: 0
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
}
