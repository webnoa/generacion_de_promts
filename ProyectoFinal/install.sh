#!/bin/bash
# Script de instalación para el proyecto "Análisis Comparativo de Ecosistemas de IA"

ENV_NAME="ia_analisis_final"

echo "🐍 Iniciando la instalación del entorno para el proyecto..."
echo "=========================================================="

# Verificar si Conda está instalado
if ! command -v conda &> /dev/null
then
    echo "❌ Error: Conda no está instalado. Por favor, instala Miniconda o Anaconda."
    exit 1
fi

# Crear el entorno virtual de Conda
echo "1. Creando el entorno de Conda '$ENV_NAME' con Python 3.9..."
conda create --name $ENV_NAME python=3.9 -y

# Activar el entorno
echo "2. Activando el entorno '$ENV_NAME'..."
source $(conda info --base)/etc/profile.d/conda.sh
conda activate $ENV_NAME

# Instalar dependencias
echo "3. Instalando librerías desde requirements.txt..."
pip install -r requirements.txt

# Habilitar widgets de Jupyter
echo "4. Configurando los widgets de Jupyter Notebook..."
jupyter nbextension enable --py widgetsnbextension --sys-prefix

echo ""
echo "🎉 ¡Instalación completada!"
echo "Para empezar, usa: conda activate $ENV_NAME"