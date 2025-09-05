import QtQuick 2.12

Rectangle {
    width: 480; height:  240
    color: "#1e1e1e"

    Grid{
        anchors.centerIn: parent
        spacing: 20
        rows: 2; columns: 4
        Image {
            id: sourceImage
            width: 80; height: width
            source: "assets/tulips.jpg"
        }

        ShaderEffect {
            id: effect
            width: 80; height: width
            fragmentShader: "
                uniform lowp float qt_Opacity;
                void main(){
                    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0) * qt_Opacity;}"
        }

    }

}
