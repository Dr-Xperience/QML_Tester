import QtQuick 2.0

Rectangle {
    id:root
    width: 360
    height: 360
    Text {
           id:label1
//           x:114
//           y: 78

            property int spacePress:0


//        text: qsTr("Hello World");
//           text:"Hello World"
           text :  "Space Pressed : " + spacePress + "times"
        onTextChanged:console.log("text changed to :",text)
        focus: true
        Keys.onSpacePressed: {
                      increment();
//            label1.text = "Space Pressed : " + spacePress + "times"
        }

        Keys.onEscapePressed: {
//            label1.text = ''
            label1.text = 'Reset'
            spacePress = 0;
        }

        function increment()
        {
            spacePress++
        }

        anchors.centerIn: parent
    }
//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            Qt.quit();
//        }
//    }
}
