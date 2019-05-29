import QtQuick 2.12
import QtQuick.Window 2.12
import CustomControls 1.0
import QtQuick.Layouts 1.12
import QtQuick.Extras 1.4

Window {
    id: appwin
    visible: true
    //    width: 576
    //    height: 922
    title: qsTr("Home Auto")
    // TOFIX RD: fixed window size !
    //    maximumHeight: 992
    //    maximumWidth: 576

    property int columns : 1
    property int rows : 1
    color: "#00000d"

    Rectangle {
        id: background
        width: 576
        height: parent.height
        anchors.centerIn: parent
        color: "#09102B"

        Rectangle {
            id: toppanel
            anchors.top: background.top
            width: background.width
            height: 260
            color: "#09102b"
            border.width: 0
            border.color: "#ffffff"
            // add text box
            Image {
                id: cook_img1
                y: 51
                width: 81
                height: 81
                anchors.left: image_basket.right
                anchors.leftMargin: 10
                anchors.bottom: image_basket.bottom
                anchors.bottomMargin: 0
                fillMode: Image.PreserveAspectFit
                source: "ASSETS/COMMON/cook_rep_with_no_rect.png"
            }

            Image {
                id: nutri_img2
                y: 51
                width: 81
                height: 81
                anchors.left: cook_img1.right
                anchors.leftMargin: 10
                anchors.bottom: cook_img1.bottom
                anchors.bottomMargin: 0
                fillMode: Image.PreserveAspectFit
                source: "ASSETS/COMMON/nutrition_rep_with_rect.png"
            }

            Image {
                id: image_plate
                y: 63
                width: 81
                height: 81
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 116
                anchors.left: parent.left
                anchors.leftMargin: 4
                fillMode: Image.PreserveAspectFit
                source: "ASSETS/COMMON/plate_rep_with_rect.png"
            }

            Image {
                id: image_basket
                y: 51
                width: 81
                height: 81
                anchors.bottom: image_plate.bottom
                anchors.bottomMargin: 0
                anchors.left: image_plate.right
                anchors.leftMargin: 10
                fillMode: Image.PreserveAspectFit
                source: "ASSETS/COMMON/food_rep_with_rect.png"
            }

            Image {
                id: image
                x: 410
                width: 158
                height: 64
                anchors.top: parent.top
                anchors.topMargin: 72
                anchors.right: parent.right
                anchors.rightMargin: 8
                fillMode: Image.PreserveAspectFit
                source: "ASSETS/COMMON/top_bar_button_next.png"
            }

            Text {
                id: txt_top
                y: 177
                width: 288
                height: 69
                color: "#ffffff"
                text: qsTr("Grinding...")
                anchors.left: parent.left
                anchors.leftMargin: 174
                lineHeight: 1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 14
                font.pixelSize: 58
            }

            Rectangle {
                id: seprator_top
                x: 0
                y: 52
                width: 576
                height: 1
                color: "#5c5555"
                border.width: 0
            }

            Rectangle {
                id: seprator_bottom
                x: 0
                y: 260
                width: 576
                height: 1
                color: "#5c5555"
                border.width: 0
                z: 1
            }


        }

        Rectangle {
            id: bottom_panel
            x: 0
            y: 731
            width: 576
            height: 260
            color: "#09102b"
            border.width: 0
            border.color: "#ffffff"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            Rectangle {
                id: bt_inner_top
                x: 0
                width: 576
                height: 179
                color: "#09102b"
                border.width: 0
                anchors.top: parent.top
                anchors.topMargin: 0

                Rectangle {
                    id: seprator_bottom2
                    x: 0
                    y: 260
                    width: 576
                    height: 1
                    color: "#5c5555"
                    border.width: 0
                    anchors.top: parent.bottom
                    z: 1
                    anchors.topMargin: 0
                }

                Text {
                    id: txt_body
                    x: 15
                    y: 53
                    width: 504
                    height: 105
                    color: "#ffffff"
                    text: qsTr("A brown fox")
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 21
                    horizontalAlignment: Text.AlignLeft
                    font.pixelSize: 20
                }

                Text {
                    id: element
                    x: 15
                    y: 8
                    width: 481
                    height: 39
                    color: "#33fa3e"
                    text: qsTr("Coming up next")
                    anchors.bottom: txt_body.top
                    anchors.bottomMargin: 6
                    fontSizeMode: Text.HorizontalFit
                    horizontalAlignment: Text.AlignLeft
                    font.pixelSize: 22
                }
            }

            Rectangle {
                id: seprator_bottom1
                x: 0
                width: 576
                height: 1
                color: "#5c5555"
                border.width: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                z: 1
            }

            Image {
                id: image1
                x: 219
                y: 188
                width: 117
                height: 46
                fillMode: Image.PreserveAspectFit
                source: "ASSETS/SCREEN_0/bottom_bar_weigh_instruments.png"
            }

            Image {
                id: image2
                x: 8
                y: 188
                width: 122
                height: 46
                fillMode: Image.PreserveAspectFit
                source: "ASSETS/SCREEN_0/botttom_bar_status.png"
            }

            Image {
                id: image3
                x: 451
                y: 188
                width: 117
                height: 46
                fillMode: Image.PreserveAspectFit
                source: "ASSETS/SCREEN_0/botttom_bar_turbo.png"
            }
        }

        Rectangle {
            id: rect_central
            x: 0
            y: 262
            width: 576
            height: 469
            color: "#09102b"
            border.width: 0
            border.color: "#f7f6f6"

            CircularGauge {
                id: circularGauge
                x: 95
                y: 37
                width: 386
                height: 386
                rotation: 0
                value: 15
            }

            Rectangle {
                id: left_indicator
                y: 382
                width: 131
                height: 74
                color: "#00ffffff"
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8

                Image {
                    id: image4
                    x: 0
                    y: 4
                    width: 58
                    height: 65
                    fillMode: Image.PreserveAspectFit
                    source: "ASSETS/SCREEN_0/ico_fan.png"
                }

                Text {
                    id: txt_fanspeed
                    y: 3
                    width: 65
                    height: 61
                    color: "#ffffff"
                    text: qsTr("22")
                    anchors.left: image4.right
                    anchors.leftMargin: 8
                    font.pixelSize: 58
                }
            }

            Rectangle {
                id: right_indicator1
                x: 445
                y: 382
                width: 131
                height: 74
                color: "#00ffffff"
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8

                Text {
                    id: txt_temp
                    y: 3
                    width: 65
                    height: 61
                    color: "#ffffff"
                    text: qsTr("22")
                    anchors.left: image6.right
                    anchors.leftMargin: 8
                    font.pixelSize: 58
                }

                Image {
                    id: image6
                    x: 23
                    y: 3
                    width: 31
                    height: 71
                    fillMode: Image.PreserveAspectFit
                    source: "ASSETS/SCREEN_0/ico_temp.png"
                }
            }
        }
    }

    //    GridView {
    //        id: grid
    //        anchors.fill: backgroud
    //        cellWidth: Math.max(width / 3, height/3);
    //        cellHeight: Math.max(width / 3, height/3)
    //        model: dashModel
    //        delegate : Rectangle {
    //            Layout.alignment: Layout.Center
    //            width: grid.cellWidth
    //            height: grid.cellHeight
    //            color: "#09102b"
    //            border.color: "#000000"
    //            border.width: 3

    //            Text {
    //                id: name
    //                text: tagName
    //                anchors.left: parent.left
    //                anchors.top: parent.top
    //                anchors.leftMargin: 10
    //                anchors.topMargin: 10
    //                font.pointSize: 13
    //                color: "#FAFAFA"
    //            }

    //            SpiralBar {
    //                anchors.horizontalCenter: parent.horizontalCenter
    //                anchors.verticalCenter:  parent.verticalCenter
    //                width: parent.width / 1.4
    //                height: width
    //                penStyle: Qt.RoundCap
    //                progressColor: "#41cd52"
    //                foregroundColor: "#3a4055"
    //                dialWidth: 30
    //                dialType: SpiralBar.FullDial
    //                minValue: minVal
    //                maxValue: maxVal
    //                startAngle: 180
    //                value: actVal
    //                suffixText: suffix
    //                textFont {
    //                    family: "Halvetica"
    //                    italic: false
    //                    pointSize: 38
    //                }
    //                textColor: "#00ffc1"
    //            }
    //        }
    //        onWidthChanged: {
    //            grid.cellWidth = grid.width/appwin.columns;
    //        }

    //        onHeightChanged: {
    //            grid.cellHeight = grid.height/appwin.rows
    //        }

    //        Rectangle {
    //            id: topmenu
    //            x: 0
    //            y: 0
    //            width: 576
    //            height: 235
    //            color: "#09102b"
    //            z: 1

    //            Text {
    //                id: element
    //                x: 8
    //                y: 154
    //                width: 560
    //                height: 56
    //                color: "#fff7f7"
    //                text: qsTr("Grinding..")
    //                horizontalAlignment: Text.AlignHCenter
    //                lineHeight: 1.8
    //                fontSizeMode: Text.HorizontalFit
    //                font.pixelSize: 48
    //            }

    //            Rectangle {
    //                id: seprator
    //                x: 0
    //                y: 231
    //                width: 576
    //                height: 1
    //                color: "#393f55"
    //                border.color: "#393f55"
    //            }

    //            Rectangle {
    //                id: seprator2
    //                x: 0
    //                y: 735
    //                width: 576
    //                height: 1
    //                color: "#393f55"
    //                border.color: "#393f55"
    //            }

    //            Image {
    //                id: plates_img
    //                x: 21
    //                y: 42
    //                width: 68
    //                height: 81
    //                fillMode: Image.PreserveAspectFit
    //                source: "ASSETS/COMMON/plate_rep_with_rect.png"
    //            }

    //            Image {
    //                id: food_img1
    //                x: 101
    //                y: 42
    //                width: 68
    //                height: 81
    //                fillMode: Image.PreserveAspectFit
    //                source: "ASSETS/COMMON/food_rep_with_rect.png"
    //            }
    //        }

    //        Rectangle {
    //            id: seprator1
    //            x: 0
    //            y: 231
    //            width: 576
    //            height: 4
    //            color: "#393f55"
    //            border.color: "#393f55"
    //        }
    //    }

    //    ListModel {
    //        id: dashModel
    //        ListElement {
    //            tagName: "Time"
    //            minVal: 0
    //            maxVal: 100
    //            actVal: 10
    //            suffix: "\""
    //        }
    //        ListElement {
    //            tagName: "Load"
    //            minVal: 0
    //            maxVal: 1000
    //            actVal: 425
    //            suffix: " mAmp"
    //        }
    //        ListElement {
    //            tagName: "Power"
    //            minVal: 0
    //            maxVal: 15
    //            actVal: 12.65
    //            suffix: " V"
    //        }

    //    }


}







































/*##^## Designer {
    D{i:0;autoSize:true;height:992;width:640}D{i:3;anchors_x:139}D{i:4;anchors_y:8}D{i:5;anchors_x:162}
D{i:6;anchors_height:81;anchors_x:20;anchors_y:85}D{i:7;anchors_y:15}D{i:8;anchors_x:276}
D{i:13;anchors_y:"-9"}D{i:12;anchors_y:0}D{i:16;anchors_y:"-9"}D{i:24;anchors_x:60}
D{i:22;anchors_x:8}D{i:26;anchors_x:60}
}
 ##^##*/
