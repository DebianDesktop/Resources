#!/bin/bash

# --- Colores y Iconos ---
BLUE="#4A90E2"
WHITE="#FFFFFF"
RED="#FF6B6B"

# Icono de Ethernet de Nerd Font
ETH_ICON="󰈀"

# --- Lógica del Script ---
PRIVATE_IP=$(ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v '^127\.' | head -1)

if [ -n "$PRIVATE_IP" ]; then
    # Conectado: Muestra el icono en grande y azul, y la IP en tamaño normal
    echo "%{F$BLUE}%{T3}$ETH_ICON%{T-}%{F$WHITE} $PRIVATE_IP"
else
    # Sin IP: Muestra el icono en grande y rojo
    echo "%{F$RED}%{T3}$ETH_ICON%{T-}"
fi
