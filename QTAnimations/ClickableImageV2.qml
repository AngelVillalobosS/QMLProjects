import QtQuick 2.12

Item {
    id: root
    width: container.childrenRect.width
    height: container.childrenRect.height

    property alias text: label.text
    property alias source: image.source
    signal clicked

    Column{
        id: container

        Image{
            id:image
        }
        Text{
            id:label
            width: image.width
            horizontalAlignment: Text.AlingHCenter
            wrapMode: Text.WordWrap
            font.pointSize: 14
            color: "#ececec"
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
