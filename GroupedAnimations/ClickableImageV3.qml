// ClickableImageV3.qml
// Simple image which can be clicked

import QtQuick 2.12

Image {
    id: root
    signal clicked
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
