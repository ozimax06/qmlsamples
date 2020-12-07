import QtQuick 2.6
import QtQuick.Controls 2.1
import Features 1.0

ScrollablePage {

	Column {
        spacing: 40
        width: parent.width

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "Rectangle collection with dynamic resize"
        }

     
        Column {          
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            Repeater { 

                 /*
                    Using repeater to generate different rectangles
                 */
                model: 
                [
                    {width: 70, name: "gre", color: "red"},
                    {width: 50, name: "we", color: "blue"},
                    {width: 100, name: "gewre", color: "red"},
                    {width: 40, name: "ooe", color: "lightgreen"}             
                ]
                Rectangle { 
                    width: modelData.width; height: 70
                    color: modelData.color

                    Text { 
                        text: modelData.name
                        font.pointSize: 10
                        anchors.centerIn: parent 
                    }
                 }
            }
        }

    }
}