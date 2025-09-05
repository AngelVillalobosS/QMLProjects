import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 500
    height: 480
    title: qsTr("Using Text Input")

    Flow{
        anchors.fill: parent
        anchors.margins: 20
        spacing: 50

        TextRectangle{

        }

        TextNav{

        }

        //Adding TLineEditV1

        TLineEditV1{}

        TLineEditV2{}

        TTextEdit{

        }

        TTextEditV2{}
    }
}
