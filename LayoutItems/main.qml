import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Layout Items (Using Anchors)")

    Rectangle{
        id: root
        color: "#888"
        width: 630
        height: 470

        Flow{
            anchors.fill: parent
            anchors.margins: 20
            spacing: 20


            //Fills parent
            GreenSquare{
                BlueSquare{
                    id: fills_parent
                    width: 12
                    anchors.fill: parent
                    anchors.margins: 8
                }
            }

            //left Alingment to the parent
            GreenSquare {
                BlueSquare {
                    width: 48
                    y: 8
                    anchors.left: parent.left
                    anchors.leftMargin: 8

                }
            }

            //Element alingned to his parent right side
            GreenSquare {
                BlueSquare {
                    width: 48
                    anchors.left: parent.right
                }
            }

            //Sq1 HorizontalCenter to parent & Sq2 HorizontalCenter to Sq1
            GreenSquare{
                BlueSquare{
                    id: sq1
                    width: 48; height: 24
                    y:8
                    anchors.horizontalCenter: parent.horizontalCenter
                    SQTitle{
                        text:"sq1"
                    }
                }
                BlueSquare{
                    id: sq2
                    width: 72; height: 24
                    anchors.top: sq1.bottom
                    anchors.topMargin: 4
                    anchors.horizontalCenter: sq1.horizontalCenter
                    SQTitle{
                        text: "sq2"My
                    }
                }
            }

            //Element centered in his parent:
            GreenSquare{
                BlueSquare{
                    width: 48
                    anchors.centerIn: parent
                }
            }
            //Element moved a little bit to the left using vertical and horizontal center alingment
            GreenSquare{
                BlueSquare{
                    width: 48
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -12
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }

}
