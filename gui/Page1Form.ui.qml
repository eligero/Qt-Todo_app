import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
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
}
