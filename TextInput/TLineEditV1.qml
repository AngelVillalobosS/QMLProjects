import QtQuick 2.12

Rectangle {
    width: 96 ; height: input.height + 18
    color: "#00c9d4"
    border.color: "gray"

    property alias text: input.text
    property alias input: input

    TextInput{
        id: input
        anchors.fill: parent
        anchors.margins: 4
        focus: true
    }
}
