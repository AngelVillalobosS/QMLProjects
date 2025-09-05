import QtQuick 2.12

Background{
    width: parent.width
    height: parent.height

    GridView{
        id: view
        anchors.fill: parent
        anchors.margins: 20

        clip: true

        model: 10000

        cellWidth: 45
        cellHeight: cellWidth

        delegate: numberDelegate
    }

    Component{
        id: numberDelegate

        GreenBox{
            width: 40
            height: width
            text: index
        }
    }
}
