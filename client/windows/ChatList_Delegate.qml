import QtQuick
import Backend

Item
{
    id: root
    height: 65
    property string chat_key: "7gHytj5goU4"
    property string chat_name: "Example Name Example Name"
    property string last_message: "Example last message that can be very long and need to cut it"
    property string last_mess_time: "22:34"
    property string unreaded_messages: "+1"
    property bool   is_online: false
    property alias  photo: photo

    Rectangle
    {
        id: background
        color: "#3D4357"
        anchors.fill: parent
        MouseArea
        {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: background.color = "#58617F"
            onExited: background.color = "#3D4357"
        }

        ImageProvider
        {
            id: photo
            source: ":/images/resources/images/user_default.png"
            radius: 360
            height: 50
            width: height
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
        }
        Item
        {
            id: online
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.rightMargin: 0
            height: 30
            width: 60
            Text
            {
                color: is_online ? "#97D2FB" : "grey"
                anchors.fill: parent
                text: is_online ? "online" : "offline"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 16
            }
        }

        Item
        {
            id: unreaded
            height: 30
            width: 40
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 5
            anchors.bottomMargin: 5
            Rectangle
            {
                anchors.centerIn: parent
                width: unreaded_count.implicitWidth + 10
                height: 20
                color: "#80FFE8"
                radius: 360
                Text
                {
                    id: unreaded_count
                    anchors.centerIn: parent
                    text: unreaded_messages
                    color: "#2B2B2B"
                    font.pixelSize: 17
                    font.bold: true
                }
            }
        }

        Text
        {
            id: name
            text: chat_name
            color: "white"
            font.pixelSize: 17
            anchors.top: parent.top
            anchors.left: photo.right
            anchors.right: online.left
            height: 30
            anchors.leftMargin: 10
            anchors.topMargin: 8
            elide: Text.ElideRight
        }

        Text
        {
            id: last
            text: last_message
            color: "white"
            font.pixelSize: 15
            anchors.bottom: parent.bottom
            anchors.left: photo.right
            anchors.right: unreaded.left
            height: 30
            anchors.leftMargin: 10
            elide: Text.ElideRight
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5}
}
##^##*/