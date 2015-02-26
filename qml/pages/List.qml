import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    SilicaListView {
        id: mainList
        anchors.fill: parent
        header: PageHeader { title: "List of Chemical Elements" }
        VerticalScrollDecorator {}
    }
}

