#!/bin/bash

# --- Colores y Iconos ---
GREEN="#00FF00"
RED="#FF6B6B"
WHITE="#FFFFFF"

# Icono de Nerd Font
VPN_ICON="󰆧"

# --- Lógica del Script ---
TUN0_IP=$(ip -4 addr show tun0 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -1)

# Comprueba si la IP de tun0 existe
if [ -n "$TUN0_IP" ]; then
    # Conectado: Muestra el icono en grande y verde, y la IP de la VPN en tamaño normal
    echo "%{F$GREEN}%{T3}$VPN_ICON%{T-}%{F$WHITE} $TUN0_IP"
else
    # Desconectado: Muestra el icono en grande y rojo, y el texto en tamaño normal
    echo "%{F$RED}%{T3}$VPN_ICON%{T-}%{F-} DISCONNECTED"
fi
