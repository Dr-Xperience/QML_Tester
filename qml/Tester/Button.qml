import QtQuick 2.0

Rectangle {
    id:root;
    property alias text: label.text;
    signal clicked

    width: 100
    height: 62

    color:"lightsteelblue"
    border.color: "slategrey"

    Text{
           id:label
           anchors.centerIn:parent
           text: "button"
           style: Text.Raised
    }
    MouseArea{
        anchors.fill:parent;
        onClicked:
        {
           root.clicked()
        }
    }
}
