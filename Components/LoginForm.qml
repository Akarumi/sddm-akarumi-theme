// Login form config

import QtQuick 2.15
import QtQuick.Layouts 1.15
import SddmComponents 2.0 as SDDM

ColumnLayout {
    id: formContainer
    SDDM.TextConstants { id: textConstants }

    property int p: config.ScreenPadding
    property string a: config.FormPosition
    property alias systemButtonVisibility: systemButtons.visible
    property alias clockVisibility: clock.visible

    Clock {
        id: clock
        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
        // important
        Layout.preferredHeight: root.height / 8
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
    }

    UserAvatar {
        id: userAvatar
        Layout.alignment: Qt.AlignVCenter
        //Layout.topMargin: parent.height / 2
        Layout.leftMargin: parent.width / 3 
        width: 180
        height: 180

        property string uaStr: config.usernamePlaceholder

        source: config.avatarSource + uaStr + config.imgType 
    }

    Input {
        id: input
        Layout.alignment: Qt.AlignVCenter
        Layout.preferredHeight: root.height / 10
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
        Layout.topMargin: 0
    }


    SystemButtons {
        id: systemButtons
        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
        Layout.preferredHeight: root.height / 4
        Layout.maximumHeight: root.height / 4
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
        exposedSession: input.exposeSession
    }
}