#!/bin/bash

# --- Colores y Iconos ---
RED="#FF6B6B"
DISABLED="#666666"
TARGET_ICON="󰯐"
NO_TARGET_ICON="󰞇"

# --- Lógica del Script ---
# Ruta al archivo donde tu función 'settarget' guarda la información
TARGET_FILE="/home/$USER/.config/settarget/target"

# Comprueba si el archivo existe y tiene contenido
if [ -s "$TARGET_FILE" ]; then
    # Si hay contenido, muestra el icono en grande y ROJO, y luego la información del objetivo
    TARGET_INFO=$(cat "$TARGET_FILE")
    echo "%{F$RED}%{T3}$TARGET_ICON%{T-}%{F-} $TARGET_INFO"
else
    # Si el archivo está vacío, muestra el nuevo icono en gris y el texto "NO TARGET"
    echo "%{F$RED}%{T3}$NO_TARGET_ICON%{T-}%{F-} NO TARGET"
fi
