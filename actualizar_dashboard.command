#!/bin/bash
# Doble clic para actualizar el dashboard despues de reemplazar MFP_25.csv.
# Limpia comas del maestro, regenera MFP_25_filtered.csv y data.js.
cd "$(dirname "$0")" || exit 1

if ! command -v python3 >/dev/null 2>&1; then
  echo "ERROR: python3 no esta instalado."
  read -n 1 -s -r -p "Presiona cualquier tecla para cerrar..."
  exit 1
fi

echo "Regenerando dashboard desde MFP_25.csv ..."
echo ""
python3 regenerar_dashboard.py
echo ""
read -n 1 -s -r -p "Presiona cualquier tecla para cerrar..."
