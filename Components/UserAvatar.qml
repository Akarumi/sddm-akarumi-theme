// User avatar canvas

import QtQuick 2.2

Canvas {
  id: avatar
  property string source: ""
  property color m_strokestyle: "#ffffff"

  onSourceChanged: delayPaintTimer.running = true
  onPaint: {
    var ctx = getContext("2d");
    ctx.beginPath()
    ctx.ellipse(0,0,width,height)
    ctx.strokeStyle = avatar.m_strokestyle
    ctx.lineWidth = 6
    ctx.closePath()
    
    ctx.clip()
    console.log(source)
    ctx.drawImage(source,0,0,width,height)
    ctx.stroke()
    ctx.restore()
  }

  Component.onCompleted: {
    loadImage(source)
  }

  Timer {
    id: delayPaintTimer
    repeat: false
    interval: 150
    onTriggered: avatar.requestPaint()
    running: true
  }
}
