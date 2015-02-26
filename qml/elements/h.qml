import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
	SilicaFlickable {
		anchors.fill: parent
		contentHeight: column.height + Theme.paddingMedium

		Column {
			width: parent.width
			spacing: Theme.paddingMedium
			PageHeader {
				title: "Hydrogen"
			}

			Label {
				id: symbol
				anchors.horizontalCenter: parent.horizontalCenter
				font {
					pixelSize: Theme.fontSizeHuge
					family: Theme.fontFamilyHeading
				}
				text: "H"
			}
		}
		VerticalScrollDecorator {}
	}
}

