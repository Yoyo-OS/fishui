import QtQuick 2.12
import QtQuick.Controls 2.12 as QQC2
import FishUI 1.0 as FishUI

QQC2.Label {
    id: control

    verticalAlignment: lineCount > 1 ? Text.AlignTop : Text.AlignVCenter
    property int iconSize: 10
    property string iconId
    activeFocusOnTab: false
    // Text.NativeRendering is broken on non integer pixel ratios
    // renderType: Window.devicePixelRatio % 1 !== 0 ? Text.QtRendering : Text.NativeRendering

    renderType: FishUI.Theme.renderType

    font.capitalization: FishUI.Theme.defaultFont.capitalization
    font.family: "MingCut"
    font.italic: FishUI.Theme.defaultFont.italic
    font.letterSpacing: FishUI.Theme.defaultFont.letterSpacing
    font.pointSize: iconSize
    font.strikeout: FishUI.Theme.defaultFont.strikeout
    font.underline: FishUI.Theme.defaultFont.underline
    font.weight: FishUI.Theme.defaultFont.weight
    font.wordSpacing: FishUI.Theme.defaultFont.wordSpacing
    color: FishUI.Theme.textColor
    linkColor: FishUI.Theme.linkColor
    text: iconId
    opacity: enabled ? 1 : 0.6

    Accessible.role: Accessible.StaticText
    Accessible.name: text
}
