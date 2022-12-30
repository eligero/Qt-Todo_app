import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
    id: item1
    width: 400
    height: 400

    ListView {
        id: listView
        anchors.fill: parent
        delegate: ItemDelegate {
            width: parent.width
            text: modelData.name || model.name
            font.bold: true
        }

        model: ListModel {
            ListElement {
                name: "Bananas"
            }

            ListElement {
                name: "Orange Juice"
            }

            ListElement {
                name: "Grapes"
            }

            ListElement {
                name: "Eggs"
            }
        }
    }

    Row {
        id: row
        height: 64
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom

        TextField {
            id: textField
            placeholderText: "enter item name"
        }

        Button {
            id: button
            text: "Add item"
        }
    }
}

/*##^## Designer {
    D{i:25;anchors_width:200;anchors_x:131}
}
 ##^##*/
