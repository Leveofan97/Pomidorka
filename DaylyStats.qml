import "ProgressBar.qml";

Item {
  id: daylyStats;
  property real st;
  anchors.top: buttonSpace.bottom;
  anchors.bottom: parent.bottom;
  anchors.left: parent.left;
  anchors.right: parent.right;

  anchors.topMargin: 10;
  anchors.leftMargin: 100;
  anchors.rightMargin: 100;
  anchors.bottomMargin: 30;

	property real step: 90;

  onCompleted: {
    weeklyStats.st = engine.dayProgress.count/4;
  }

  // Rectangle {
  //   anchors.fill: parent;
  //   color: "#f0f0f0";
  //   radius: 15;
  //   borderWidth: 1;
  //   borderColor: "#707070";
  // }

  ProgressBar{
    id: dayBar;
    anchors.horizontalCenter: daylyStats.horizontalCenter;
    anchors.bottom: parent.bottom;
    anchors.left: parent.left;
    anchors.leftMargin: 1*daylyStats.step;
    active: true;
    barColor: "#f00";
    progress: 0.1;
    height: 300;
    ttextUnderBar: "";
    onCompleted: {
      dayBar.ttextUnderBar = engine.dayProgress.day;
      dayBar.progress = engine.dayProgress.count/engine.weekMaxProgress;
    }

  }


  Rectangle{
    id: line4;

    anchors.left: parent.left;
    anchors.right: parent.right;
    anchors.bottom: parent.bottom;

    height: 1;

    anchors.bottomMargin: 300;
    anchors.leftMargin: 15;
    anchors.rightMargin: 15;

    color: "#505050";

    SecondaryText {
      id: text4;

      anchors.right: parent.left;
      anchors.verticalCenter: parent.verticalCenter;

      anchors.leftMargin: 15;
      anchors.rightMargin: 15;
      text: 4*weeklyStats.st;
      color: "#505050";
    }
  }

  Rectangle{
    id: line3;

    anchors.left: parent.left;
    anchors.right: parent.right;
    anchors.bottom: parent.bottom;

    height: 1;

    anchors.bottomMargin: 225;
    anchors.leftMargin: 15;
    anchors.rightMargin: 15;

    color: "#505050";

    SecondaryText {
      id: text3;

      anchors.right: parent.left;
      anchors.verticalCenter: parent.verticalCenter;

      anchors.leftMargin: 15;
      anchors.rightMargin: 15;
      text: 3*weeklyStats.st;
      color: "#505050";
    }
  }

  Rectangle{
    id: line2;

    anchors.left: parent.left;
    anchors.right: parent.right;
    anchors.bottom: parent.bottom;

    height: 1;

    anchors.bottomMargin: 150;
    anchors.leftMargin: 15;
    anchors.rightMargin: 15;

    color: "#505050";

    SecondaryText {
      id: text2;

      anchors.right: parent.left;
      anchors.verticalCenter: parent.verticalCenter;

      anchors.leftMargin: 15;
      anchors.rightMargin: 15;
      text: 2*weeklyStats.st;
      color: "#505050";
    }
  }

  Rectangle{
    id: line1;

    anchors.left: parent.left;
    anchors.right: parent.right;
    anchors.bottom: parent.bottom;

    height: 1;

    anchors.bottomMargin: 75;
    anchors.leftMargin: 15;
    anchors.rightMargin: 15;

    color: "#505050";

    SecondaryText {
			id: text1;

			anchors.right: parent.left;
      anchors.verticalCenter: parent.verticalCenter;

			anchors.leftMargin: 15;
      anchors.rightMargin: 15;
			text: weeklyStats.st;
			color: "#505050";
		}
  }

  Rectangle{
    id: line0;

    anchors.left: parent.left;
    anchors.right: parent.right;
    anchors.top: weeklyStats.bottom;

    height: 1;

    anchors.leftMargin: 15;
    anchors.rightMargin: 15;

    color: "#505050";

    SecondaryText {
			id: text0;

			anchors.right: parent.left;
      anchors.verticalCenter: parent.verticalCenter;

			anchors.leftMargin: 15;
      anchors.rightMargin: 15;
			text: "0";
			color: "#505050";
		}
  }

}