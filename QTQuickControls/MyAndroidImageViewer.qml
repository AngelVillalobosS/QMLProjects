import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.1
import QtQuick.Dialogs 1.2

ImageViewerWindow{
    id: window

    width: 360
    height: 520

    background: Rectangle{
        color: "darkGray"
    }

    Drawer{
        id: drawer

        width: Math.min(window.width, window.height) / 3 * 2
        height: window.height

        ListView{
            focus: true
            currentIndex: -1
            anchors.fill: parent

            delegate: ItemDelegate{
                width: parent.width
                text: model.text
                highlighted: ListView.isCurrentItem
                onClicked: {
                    drawer.close()
                    model.triggered()
                }
            }

            model: ListModel{
                ListElement{
                    text: qsTr("Open...")
                    triggered:  function(){ fileOpenDialog.open(); }
                }
                ListElement{
                    text: qsTr("About...")
                    triggered: function(){ aboutDialog.open(); }
                }
            }

            ScrollIndicator.vertical: ScrollIndicator {}
        }
    }

    header: ToolBar{
        Material.background: Material.Orange
        ToolButton{
            id: menuButton
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "images/baseline-menu-24px.svg"
            onClicked: drawer.open()
        }
        Label{
            anchors.centerIn: parent
            text: "Image Viewer"
            font.pixelSize: 20
            elide: Label.ElideRight
        }
    }
}
