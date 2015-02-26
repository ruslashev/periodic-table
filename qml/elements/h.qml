import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
	SilicaFlickable {
		anchors.fill: parent
		contentHeight: column.height + Theme.paddingLarge

		Column {
			id: column
			spacing: Theme.paddingLarge
			width: parent.width

			PageHeader { title: "Hydrogen" }
			PageHeader {
				title: "H"
				anchors.horizontalCenter: parent.horizontalCenter
			}

			SectionHeader { text: "Symbol" }
			Row {
				spacing: Theme.paddingLarge
				anchors.horizontalCenter: parent.horizontalCenter
				Label {
					anchors.verticalCenter: parent.verticalCenter
					text: "H"
				}
			}
		}

		VerticalScrollDecorator {}
	}
}

