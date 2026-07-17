#!/bin/bash

# Define os diretórios
WALL_DIR="$HOME/Pictures/Wallpapers"
CACHE_DIR="$HOME/.cache/rofi-wallpaper-picker"

mkdir -p "$CACHE_DIR"

# Sincroniza e gera as miniaturas em tamanho menor para carregar instantaneamente
cd "$WALL_DIR" || exit
for img in *.png *.jpg *.jpeg *.webp; do
    [ -f "$img" ] || continue
    if [ ! -f "$CACHE_DIR/$img" ]; then
        # Redimensiona para formato 16:9 limpo
        magick "$img" -resize 280x157^ -gravity center -extent 280x157 "$CACHE_DIR/$img" &
    fi
done
wait

# Monta a lista formatada para o Rofi carregar os ícones locais
options=""
for img in *.png *.jpg *.jpeg *.webp; do
    [ -f "$img" ] || continue
    options+="$img\x00icon\x1f$CACHE_DIR/$img\n"
done

# Tema moderno e escuro (todas as variações de elementos travadas no escuro)
ROFI_THEME="
* {
    background-color:            #11111b;
    text-color:                  #cdd6f4;
    font:                        \"JetBrainsMono Nerd Font 10\";
}
window {
    width:                       850px;
    height:                      500px;
    border:                      0px;
    border-radius:               12px;
    padding:                     20px;
    background-color:            #11111b;
}
mainbox {
    children:                    [ inputbar, listview ];
    spacing:                     15px;
    background-color:            transparent;
}
inputbar {
    children:                    [ prompt, entry ];
    background-color:            #1e1e2e;
    border-radius:               8px;
    padding:                     10px;
}
prompt {
    background-color:            transparent;
    text-color:                  #89b4fa;
    margin:                      0px 10px 0px 0px;
}
entry {
    background-color:            transparent;
    placeholder:                 \"Pesquisar...\";
    placeholder-color:           #585b70;
}
listview {
    columns:                     3;
    lines:                       2;
    cycle:                       true;
    dynamic:                     true;
    layout:                      vertical;
    flow:                        horizontal;
    fixed-columns:               true;
    spacing:                     20px;
    background-color:            transparent;
}
element {
    orientation:                 vertical;
    border-radius:               10px;
    padding:                     10px;
    spacing:                     8px;
}

/* Força todos os estados dos cartões a usarem o fundo escuro do tema */
element normal.normal {
    background-color:            #1e1e2e;
    text-color:                  #cdd6f4;
}
element alternate.normal {
    background-color:            #1e1e2e;
    text-color:                  #cdd6f4;
}

/* Estado selecionado (destaque azul) */
element selected.normal {
    background-color:            #89b4fa;
    text-color:                  #11111b;
}

element-icon {
    size:                        140px;
    horizontal-align:            0.5;
    background-color:            transparent;
}
element-text {
    horizontal-align:            0.5;
    background-color:            transparent;
    text-color:                  inherit;
}
"

# Roda o Rofi
chosen=$(echo -e -n "$options" | rofi -dmenu \
    -show-icons \
    -theme-str "$ROFI_THEME" \
    -p "  Wallpapers")

# Aplica o wallpaper selecionado
if [ -n "$chosen" ]; then
    pkill swaybg
    swaybg -i "$WALL_DIR/$chosen" -m fill &
fi
