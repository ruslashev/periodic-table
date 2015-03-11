import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
	id: listPage

	SilicaListView {
		id: mainList
		anchors.fill: parent
		model: listModel
		header: PageHeader { title: "List of Chemical Elements" }

		delegate: ListItem {
			id: listItem

			x: Theme.paddingLarge
			width: parent.width - 2*Theme.paddingLarge
			height: childrenRect.height

			Label {
				text: model.name
				anchors {
					verticalCenter: parent.verticalCenter
					horizontalCenter: parent.horizontalCenter
				}
			}
			Label {
				text: model.index+1
				anchors {
					verticalCenter: parent.verticalCenter
					left: parent.left
					leftMargin: Theme.paddingLarge
				}
			}
			Label {
				text: model.symbol
				anchors {
					verticalCenter: parent.verticalCenter
					right: parent.right
					rightMargin: Theme.paddingLarge
				}
			}
			onClicked: {
				pageStack.push(Qt.resolvedUrl(model.file))
			}
		}
		VerticalScrollDecorator {}
	}
	ListModel {
		id: listModel
		ListElement {
			name: "Hydrogen"
			symbol: "H"
			file: "elements/h.qml"
		}
		ListElement {
			name: "Developium"
			symbol: "Qml"
			file: "elements/h.qml"
		}
	}
}

