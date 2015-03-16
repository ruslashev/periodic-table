import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
	PageHeader {
		id: header
		title: "Hydrogen"
	}
	Label {
		id: symbol
		anchors.top: header.bottom
		anchors.horizontalCenter: parent.horizontalCenter
		font.pixelSize: 90
		text: "H"
	}

	SilicaListView {
		width: parent.width
		anchors.top: symbol.bottom
		spacing: Theme.paddingMedium

		model: listModel

		delegate: ListItem {
			x: Theme.paddingLarge
			width: parent.width - 2*Theme.paddingLarge
			height: childrenRect.height

			Label {
				id: origin
				text: model.desc
				anchors {
					left: parent.left
					right: data.left
					rightMargin: Theme.paddingSmall
				}
			}
			Label {
				id: data
				text: model.data
				horizontalAlignment: Text.AlignRight
				anchors {
					right: parent.right
					baseline: origin.baseline
				}
			}
		}

		VerticalScrollDecorator {}
	}
	ListModel {
		id: listModel
		ListElement {
			desc: "Atomic number"
			data: "1"
		}
		ListElement {
			desc: "Group number"
			data: "1"
		}
		ListElement {
			desc: "Relaive atomic mass"
			data: "1.00794 +- 0.00007"
		}
	}
}

