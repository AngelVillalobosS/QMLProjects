import QtQuick 2.12

Column{
    spacing: 2

    Repeater{
        model: ListModel{
            ListElement { name: "Mercury" ; surfaceColor: "gray" }
            ListElement { name: "Venus" ; surfaceColor: "yellow" }
            ListElement { name: "Earth" ; surfaceColor: "blue" }
            ListElement { name: "Mars" ; surfaceColor: "orange" }
            ListElement { name: "Jupiter" ; surfaceColor: "yellow" }
            ListElement { name: "Saturn" ; surfaceColor: "lightBlue" }
            ListElement { name: "Neptune" ; surfaceColor: "#85ADDB" }
        }

        BlueBox{
            width: 120
            height: 32

            radius: 3
            text: name

            Box{
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 4

                width: 16
                height: width

                radius: width/2

                color: surfaceColor
            }
        }
    }
}
