import QtQuick 2.12

Rectangle {
    width: 120
    height: 300
    anchors.centerIn: parent

    gradient: Gradient{
        GradientStop { position: 0.0; color: "#f6f6f6" }
        GradientStop { position: 0.0; color: "#d7d7d7" }
    }

    ListModel{
        id: actionModel

        ListElement {
            name: "Copenhagen"
            hello: function(value) { console.log(value + ":You clicked Copenhagen"); }
        }
        ListElement {
            name: "Hellsinki"
            hello: function(value) { console.log(value + ":Hellsinki here!!"); }
        }
        ListElement {
            name: "Oslo"
            hello: function(value) { console.log(value + ":Hei Hei fra Oslo!"); }
        }
        ListElement {
            name: "Stockholm"
            hello: function(value) { console.log(value + ":Stockholm calling!"); }
        }
    }

    ListView{
        anchors.fill: parent
        anchors.margins: 20

        clip: true

        model: actionModel

        delegate: actionDelegate
        spacing: 5

        focus: true
    }

    Component {
        id: actionDelegate

        Rectangle {
            width: ListView.view.width
            height:  40

            color: "#157efb"

            Text {
                anchors.fill: parent
                font.pixelSize: 10
                text: name
            }

            MouseArea {
                anchors.fill: parent
                onClicked: hello(index);
            }
        }
    }
}
