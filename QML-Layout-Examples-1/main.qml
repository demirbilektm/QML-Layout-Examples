import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQml 2.12

Window {
    width: 320;
    height: 240;
    visible: true;
    color: "#845EC2"
    GridLayout{
          id: grid
          rows: 3
          flow: GridLayout.LeftToRight
          layoutDirection: Qt.RightToLeft
          anchors.fill: parent
          Repeater {
              model: 3
              Rectangle {
                  color: "#D65DB1"
                  Layout.alignment: Qt.AlignRight
                  Layout.fillHeight: true
                  Layout.preferredWidth: 40
                  Layout.preferredHeight: 70
                  Text {
                      anchors.centerIn: parent
                      font.pixelSize: 14
                      text: index
                  }
                  Component.onCompleted: {

                      console.log(Layout.row +","+ Layout.column)

                  }
              }
          }

          Repeater {
              model: 3
              Rectangle {
                  Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
                  color: "#FF9671"
                  Layout.fillHeight: true
                 // Layout.fillWidth: true //
                  Layout.preferredWidth: 40
                  Layout.preferredHeight: 70
                  Text {
                      anchors.centerIn: parent
                      font.pixelSize: 14
                      text: index
                  }
              }
          }
    }

}
