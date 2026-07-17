import QtQuick
import Quickshell

QtObject {
    readonly property string homeDir: Quickshell.env("HOME")

    // Ajustado para a sua pasta real de Wallpapers
    property string wallpaperDir: "${HOME}/Pictures/Wallpapers"
    readonly property string cacheDir: "${HOME}/.cache/wallpaper_picker"
    readonly property string thumbDir: "${HOME}/.cache/wallpaper_picker/thumbs"    

    property bool uiAnimationsEnabled: true
    property real uiAnimationScale: 1.0

    // Configurações de Transição
    property string wallpaperTransitionType: "random"
    property real wallpaperTransitionDuration: 0.6
    property int wallpaperTransitionFps: 60

    property int closeDelayMs: 120
    property int scrollThrottleMs: 150
    property int filterAnimationMs: 800
    property int itemAnimationMs: 500

    // Desativamos integrações automáticas do Hyprland para não dar erro no seu Niri
    property bool enableDynamicColors: false
    property bool enableMatugen: false
    property bool enableHyprReload: false
    property bool enableWaybarReload: false
    property bool enableKittyReload: false
    property bool enableCavaReload: false
    property bool enableSwayncReload: false
    property bool enableSwayosdReload: false

    property string hyprColorsPath: homeDir + "/.config/hypr/colors.conf"
    property string waybarColorsPath: homeDir + "/.config/waybar/colors.css"
    property string waybarLaunchPath: homeDir + "/.config/waybar/launch.sh"
    property string kittySignalProcess: ".kitty-wrapped"

    // Comando extra para aplicar o wallpaper usando o swaybg no Niri assim que você selecionar
    property string extraReloadCommand: "pkill swaybg; swaybg -i $WALLPAPER -m fill &"
}
