import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    id: item1
    property alias addItemField: addItemField
    property alias addItemButton: addItemButton
    property alias groceriesListView: groceriesListView
    signal itemRemoved(string itemName)

    ListView {
        id: groceriesListView
        anchors.fill: parent
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

        delegate: ItemDelegate {
            width: groceriesListView.width
            text: modelData.name || model.name
            font.bold: true
            Button {
                id: removeItemButton
                width: height
                height: parent.height
                text: "X"
                anchors.right: parent.right
                Connections {
                    target: removeItemButton
                    onClicked: itemRemoved(modelData.name || model.name)
                }
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
            id: addItemField
            placeholderText: "enter item name"
        }

        Button {
            id: addItemButton
            text: qsTr("Add item")
        }
    }
}


/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
