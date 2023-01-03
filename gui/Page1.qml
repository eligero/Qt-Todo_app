import QtQuick 2.7

Page1Form {
    addItemButton.onClicked: addGroceryItem.run(addItemField.text)
    groceriesListView.model: groceryItems.list
    onItemRemoved: removeGroceryItem.run(itemName)

    Component.onCompleted: checkAvailableGroceries.run()

    Connections {
        target: addGroceryItem
        onSuccess: addItemField.text = ""
    }

}
