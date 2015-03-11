import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
	Column {
		width: parent.width
		anchors {
			verticalCenter: parent.verticalCenter
			horizontalCenter: parent.horizontalCenter
			leftMargin: Theme.paddingMedium
			rightMargin: Theme.paddingMedium
		}
		Label {
			text: "List of chemical elements"
			width: parent.width
			wrapMode: Text.WordWrap
			maximumLineCount: 4
		}
	}
}

