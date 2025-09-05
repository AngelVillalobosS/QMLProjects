import QtQuick 2.0

Column {
    spacing: 5

    Repeater {
        model: 10
        BlueBox{
            width: 120
            height: 32
            text: index
        }
    }
}
