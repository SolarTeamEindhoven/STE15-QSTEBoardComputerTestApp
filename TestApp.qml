import QtQuick 2.4

import nl.solarteameindhoven.sdk 1.0

VehicleApp {

    Rectangle {

        anchors.fill: parent

        color: leftControlBarButtonMouseArea.pressed ? "blue" : "green"

        Text {
            text: "HOI!!!"
        }

    }

    bccontrolbar: BCControlBar {
        leftButton: ControlBarButton {
            id: leftControlBarButton

            Rectangle {
                anchors.fill: parent
                color: leftControlBarButtonMouseArea.pressed ? "#c33" : "#a44"
                opacity: leftControlBarButtonMouseArea.pressed ? 0.5 : 0.8
                radius:  parent.width
            }

            MouseArea {
                id: leftControlBarButtonMouseArea
                anchors.fill: parent
            }
        }

        rightButton: ControlBarButton {
            id: aardAppel

            Rectangle {
                anchors.fill: parent
                color: "cyan"
            }
        }
    }

}

