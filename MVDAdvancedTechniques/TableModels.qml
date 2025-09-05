import QtQuick 2.12
import "MyComponents"

Item{
    width: parent.width
    height: parent.height
    TableView {
        columnWidthProvider: function (column) { return 10 * (column+1); }
        id: view
        anchors.fill: parent
        anchors.margins: 20

        rowSpacing: 5
        columnSpacing: 5

        clip: true

        model: tableModel

        delegate: cellDelegate

    }

    Component{
        id: cellDelegate
        GreenBox{
            //            implicitHeight: (1 + row) * 10
            implicitHeight: 40
            implicitWidth: 40

            Text{
                anchors.fill: parent
                text: Display
            }
        }
    }

}
