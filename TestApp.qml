/**************************************************************************
 **
 ** Copyright 2015 Solar Team Eindhoven. All rights reserved.
 **
 ** Licensed under the Apache License, Version 2.0 (the "License");
 ** you may not use this file except in compliance with the License.
 ** You may obtain a copy of the License at
 **
 **   http://www.apache.org/licenses/LICENSE-2.0
 **
 ** Unless required by applicable law or agreed to in writing, software
 ** distributed under the License is distributed on an "AS IS" BASIS,
 ** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 ** See the License for the specific language governing permissions and
 ** limitations under the License.
 **
 **************************************************************************/

import QtQuick 2.4

import nl.solarteameindhoven.sdk 1.0

BCVehicleApp {

    Rectangle {

        anchors.fill: parent

        color: leftControlBarButtonMouseArea.pressed ? "blue" : "green"

        Text {
            text: "HOI!!!"
        }

    }

    bccontrolbar: BCControlBar {
        leftButton: BCControlBarButton {
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

        rightButton: BCControlBarButton {
            id: aardAppel

            Rectangle {
                anchors.fill: parent
                color: "cyan"
            }
        }
    }

}

