# ===============================================================
# COMANDOS DE INSTALACIÓN - EduIA Personalizada
# Copia y pega estos comandos en tu terminal de Miniconda
# ===============================================================

# PASO 1: Crear y activar entorno
conda create --name eduia python=3.9
conda activate eduia

# PASO 2: Instalar dependencias principales (EN ESTE ORDEN)
pip install openai==0.28
pip install jupyter notebook
pip install -U google-generativeai
pip install pandas==1.5.0
pip install numpy==1.23.5

# PASO 3: Instalar dependencias adicionales
pip install Pillow matplotlib ipywidgets requests

# PASO 4: Configurar Jupyter widgets
jupyter nbextension enable --py widgetsnbextension --sys-prefix

# PASO 5: Verificar instalación
python -c "import openai, google.generativeai, pandas, numpy, jupyter, ipywidgets; print('✅ Todo instalado correctamente')"

# PASO 6: Iniciar Jupyter Notebook
jupyter notebook

# ===============================================================
# COMANDOS DE USO DIARIO
# ===============================================================

# Activar entorno
conda activate eduia

# Ir al proyecto
cd ruta/a/tu/proyecto

# Iniciar Jupyter
jupyter notebook

# ===============================================================
# COMANDOS DE VERIFICACIÓN
# ===============================================================

# Ver versiones instaladas
python -c "import openai; print(f'OpenAI: {openai.__version__}')"
python -c "import pandas; print(f'Pandas: {pandas.__version__}')"
python -c "import numpy; print(f'NumPy: {numpy.__version__}')"

# Ver librerías instaladas
pip list | grep -E "(openai|pandas|numpy|jupyter|google)"

# ===============================================================
# COMANDOS DE TROUBLESHOOTING
# ===============================================================

# Si hay conflictos, reinstalar en orden
pip uninstall pandas numpy -y
pip install numpy==1.23.5
pip install pandas==1.5.0

# Si widgets no funcionan
pip uninstall ipywidgets -y
pip install ipywidgets
jupyter nbextension enable --py widgetsnbextension --sys-prefix

# Si OpenAI da problemas
pip install --force-reinstall openai==0.28

# ===============================================================
# INSTALACIÓN COMPLETA EN UNA LÍNEA (Experimental)
# ===============================================================

conda create --name eduia python=3.9 -y && conda activate eduia && pip install openai==0.28 jupyter notebook google-generativeai pandas==1.5.0 numpy==1.23.5 Pillow matplotlib ipywidgets requests && jupyter nbextension enable --py widgetsnbextension --sys-prefix

# ===============================================================
# NOTAS IMPORTANTES
# ===============================================================

# 1. Siempre activar el entorno antes de trabajar: conda activate eduia
# 2. OpenAI 0.28 es específico para compatibilidad de requests
# 3. Pandas 1.5.0 y NumPy 1.23.5 son versiones compatibles probadas
# 4. Google Generative AI es alternativa gratuita a OpenAI
# 5. Si algo falla, seguir el orden de instalación exacto

# ===============================================================
# BACKUP Y RESTAURACIÓN
# ===============================================================

# Exportar entorno para backup
conda env export --name eduia > eduia_backup.yml

# Restaurar entorno desde backup
conda env create -f eduia_backup.yml

# Eliminar entorno si hay problemas
conda remove --name eduia --all