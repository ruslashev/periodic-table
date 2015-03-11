import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
	Label {
		id: anchor_text
		text: "chemical"
		anchors.centerIn: parent

		font.pixelSize: Theme.fontSizeLarge
		color: Theme.secondaryHighlightColor
	}
	Label {
		text: "List of"
		anchors.bottom: anchor_text.top

		anchors.horizontalCenter: anchor_text.horizontalCenter
		font.pixelSize: Theme.fontSizeLarge
		color: Theme.secondaryHighlightColor
	}
	Label {
		text: "elements"
		anchors.top: anchor_text.bottom

		anchors.horizontalCenter: anchor_text.horizontalCenter
		font.pixelSize: Theme.fontSizeLarge
		color: Theme.secondaryHighlightColor
	}
}

