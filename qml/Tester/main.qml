import QtQuick 2.0

Rectangle {
    id:root
    width: 360
    height: 360
    color: "#00000000"
    opacity: 0.20
    Text {
        id:label1
        //           x:114
        //           y: 78
        width:parent.width
        property int spacePress:0
        //            x: 125
        //            y: 174


        //        text: qsTr("Hello World");
        //           text:"Hello World"
        text :  "Space Pressed : " + spacePress + "times"
        opacity: 1

        //         elide: Text.ElideRight
        wrapMode: Text.WordWrap
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
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter



    }

    Rectangle {
        id: rectangle1

        x:parent.x + 12; y:12
        width:76; height:96

        color:"lightgreen"
    }

    Rectangle{
        id:rectangle2

        x:parent.width - rectangle2.width
        //        y:parentrectangle2.height

        width:rectangle1.width; height:rectangle1.height

        border.color: "lightsteelblue"
        border.width: 5
        radius: 7
        property int times: 0

        MouseArea{
            anchors.fill:rectangle2
            onClicked: {

                label1.text = "rectangle2 clicked me "+ ++rectangle2.times +" times :: "+rectangle2.toString();
            }
        }
    }


    Button{
        id: button;
        x:0;
        y:root.height - button.height;

        text: "a button";
        onClicked: {
            label1.text= "Button clicked"
        }
    }

    border.color: "lightgreen"
}

