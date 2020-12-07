import QtQuick 2.6
import QtQuick.Controls 2.1
import Features 1.0

/*
Scrollable page breaks animations. So I removed it
*/

Column {
    /* Finite rotation */
    Item {
        width: 200; height: 200

        Rectangle {
            id: rect
            width: 150; height: 100; anchors.centerIn: parent
            color: "red"
            smooth: true

            states: State {
                name: "rotated"
                PropertyChanges { target: rect; rotation: 180 }
            }

            transitions: Transition {
                RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
            }
        }

        MouseArea { 
            anchors.fill: parent
            onClicked: rect.state = "rotated"
        }
    }

     /* Finite horizontal move */
    Item {
        width: 600; height: 200

        Rectangle {
            id: rect2
            width: 150; height: 100;
            color: "red"
            smooth: true
            x:0

            states: State {
                name: "moved"
                PropertyChanges { target: rect2; x: 200 }
            }

            /* OutQuad: decelerating to 0 value throughout the animation*/
            transitions: Transition {
                PropertyAnimation {duration: 1000; properties: "x"; easing.type: Easing.OutQuad }
            }
        }

        MouseArea { 
            anchors.fill: parent
            onClicked: rect2.state = "moved"
        }
    }

    /* Infinite rotation */
    Item {
        width: 200; height: 200

        Rectangle {
            id: rect3
            width: 150; height: 100; anchors.centerIn: parent
            color: "blue"
            smooth: true

            states: State {
                name: "infiniteRotate"
                PropertyChanges { target: rect3; rotation: 180 }
            }

            transitions: Transition {
                RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise; loops: Animation.Infinite }
            }
        }

        MouseArea { 
            anchors.fill: parent
            onClicked: rect3.state = "infiniteRotate"
        }
    }
}



