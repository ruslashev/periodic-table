import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
	id: listOfElements

	SilicaListView {
		id: mainList
		anchors.fill: parent
		model: listModel
		header: PageHeader { title: "List of Chemical Elements" }

		delegate: ListItem {
			id: listItem
			onClicked: {
				pageStack.push(Qt.resolvedUrl("elements/" + model.text + ".qml"))
			}
			Label {
				x: Theme.paddingLarge
				// text: (model.index+1) + ". " + model.text
				text: model.text
				anchors.verticalCenter: parent.verticalCenter
				color: listItem.highlighted ? Theme.highlightColor : Theme.primaryColor
				font.capitalization: Font.Capitalize
			}
		}
		VerticalScrollDecorator {}
	}
	ListModel {
		id: listModel
		ListElement {
			text: "h"
		}
	}
}
