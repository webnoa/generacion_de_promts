# 🐍 Guía de Instalación en Miniconda - EduIA Personalizada

## 📋 Requerimientos Específicos del Proyecto

Esta guía documenta la instalación exacta de librerías para el proyecto EduIA Personalizada, con versiones específicas para garantizar compatibilidad.

---

## 🛠️ Preparación del Entorno

### 1. Verificar Miniconda
```bash
# Verificar que Miniconda está instalado
conda --version

# Si no está instalado, descargar desde:
# https://docs.conda.io/en/latest/miniconda.html
```

### 2. Crear Entorno Virtual Dedicado
```bash
# Crear entorno nuevo con Python 3.9 (recomendado)
conda create --name eduia python=3.9

# Activar el entorno
conda activate eduia

# Verificar que estás en el entorno correcto
conda info --envs
```

---

## 📦 Instalación de Dependencias Principales

### ⚠️ **IMPORTANTE: Instalar EN ESTE ORDEN para evitar conflictos**

### 1. OpenAI (Versión Específica)
```bash
# Instalar OpenAI 0.28 para mejor compatibilidad de requests
pip install openai==0.28
```

**¿Por qué esta versión?**
- ✅ Mejor estabilidad en requests API
- ✅ Compatibilidad con código legacy  
- ✅ Menos cambios breaking vs versiones nuevas

### 2. Jupyter Notebook (Servidor Local)
```bash
# Instalar tanto Jupyter como Notebook
pip install jupyter notebook
```

**Funcionalidad:**
- ✅ Crear servidor local para desarrollo
- ✅ Interfaz interactiva para demos
- ✅ Soporte completo para widgets

### 3. Google Generative AI (Gemini AI Studio)
```bash
# Instalar Gemini AI como alternativa
pip install -U google-generativeai
```

**Beneficios:**
- ✅ Alternativa gratuita a OpenAI
- ✅ Modelos de Google (Gemini Pro)
- ✅ Backup cuando OpenAI no esté disponible

### 4. Pandas (Versión Compatible)
```bash
# Instalar Pandas versión específica
pip install pandas==1.5.0
```

**Compatibilidad:**
- ✅ Estabilidad probada con NumPy 1.23.5
- ✅ Sin conflictos con Jupyter widgets
- ✅ Funciones de análisis de datos estables

### 5. NumPy (Versión Compatible)
```bash
# Instalar NumPy versión específica  
pip install numpy==1.23.5
```

**Razones para esta versión:**
- ✅ Máxima compatibilidad con Pandas 1.5.0
- ✅ Estabilidad en operaciones matemáticas
- ✅ Sin warnings de deprecación

---

## 🔧 Dependencias Adicionales para EduIA

### 6. Librerías de Soporte
```bash
# Procesamiento de imágenes
pip install Pillow

# Visualización
pip install matplotlib

# Widgets interactivos  
pip install ipywidgets

# Requests para APIs
pip install requests
```

### 7. Configurar Jupyter Widgets
```bash
# Habilitar widgets en Jupyter Notebook
jupyter nbextension enable --py widgetsnbextension --sys-prefix

# Verificar que están habilitados
jupyter nbextension list
```

---

## 🚀 Verificación de Instalación

### Script de Verificación Completa
```python
# Crear archivo verificar_instalacion.py
print("🔍 Verificando instalación de EduIA Personalizada...")
print("=" * 60)

try:
    import openai
    print(f"✅ OpenAI: {openai.__version__}")
except Exception as e:
    print(f"❌ OpenAI: {e}")

try:
    import google.generativeai as genai
    print("✅ Google Generative AI: Instalado")
except Exception as e:
    print(f"❌ Google Generative AI: {e}")

try:
    import pandas as pd
    print(f"✅ Pandas: {pd.__version__}")
except Exception as e:
    print(f"❌ Pandas: {e}")

try:
    import numpy as np
    print(f"✅ NumPy: {np.__version__}")
except Exception as e:
    print(f"❌ NumPy: {e}")

try:
    import jupyter
    print("✅ Jupyter: Instalado")
except Exception as e:
    print(f"❌ Jupyter: {e}")

try:
    import ipywidgets
    print(f"✅ IPY Widgets: {ipywidgets.__version__}")
except Exception as e:
    print(f"❌ IPY Widgets: {e}")

try:
    import matplotlib
    print(f"✅ Matplotlib: {matplotlib.__version__}")
except Exception as e:
    print(f"❌ Matplotlib: {e}")

try:
    from PIL import Image
    print("✅ Pillow: Instalado")
except Exception as e:
    print(f"❌ Pillow: {e}")

try:
    import requests
    print(f"✅ Requests: {requests.__version__}")
except Exception as e:
    print(f"❌ Requests: {e}")

print("\n🎯 VERIFICACIÓN COMPLETADA")
print("Si todas las librerías muestran ✅, ¡estás listo!")
```

### Ejecutar Verificación
```bash
# Ejecutar script de verificación
python verificar_instalacion.py
```

---

## 🖥️ Iniciar Jupyter Notebook

### Comando Principal
```bash
# Asegúrate de estar en el entorno eduia
conda activate eduia

# Navegar a la carpeta del proyecto
cd ruta/a/tu/proyecto/eduia-personalizada

# Iniciar servidor local de Jupyter
jupyter notebook
```

### ¿Qué sucede al ejecutar?
1. **Se abre tu navegador** automáticamente
2. **URL local**: `http://localhost:8888`
3. **Interface de Jupyter** lista para usar
4. **Buscar**: `EduIA_Personalizada_POC.ipynb`

---

## 📋 Script de Instalación Automática

### Crear install_eduia.sh (Mac/Linux)
```bash
#!/bin/bash
echo "🐍 Instalando EduIA Personalizada en Miniconda"
echo "================================================"

# Crear y activar entorno
echo "1. Creando entorno virtual..."
conda create --name eduia python=3.9 -y
source activate eduia

# Instalar dependencias principales EN ORDEN
echo "2. Instalando OpenAI 0.28..."
pip install openai==0.28

echo "3. Instalando Jupyter Notebook..."
pip install jupyter notebook

echo "4. Instalando Google Generative AI..."
pip install -U google-generativeai

echo "5. Instalando Pandas 1.5.0..."
pip install pandas==1.5.0

echo "6. Instalando NumPy 1.23.5..."
pip install numpy==1.23.5

echo "7. Instalando dependencias adicionales..."
pip install Pillow matplotlib ipywidgets requests

echo "8. Configurando Jupyter widgets..."
jupyter nbextension enable --py widgetsnbextension --sys-prefix

echo "9. Verificando instalación..."
python -c "
import openai, google.generativeai, pandas, numpy, jupyter, ipywidgets
print('✅ ¡Instalación completada exitosamente!')
print(f'OpenAI: {openai.__version__}')
print(f'Pandas: {pandas.__version__}')
print(f'NumPy: {numpy.__version__}')
"

echo ""
echo "🎉 ¡Listo! Para usar:"
echo "1. conda activate eduia"
echo "2. cd tu/proyecto"
echo "3. jupyter notebook"
```

### Crear install_eduia.bat (Windows)
```batch
@echo off
echo 🐍 Instalando EduIA Personalizada en Miniconda
echo ================================================

echo 1. Creando entorno virtual...
conda create --name eduia python=3.9 -y
call conda activate eduia

echo 2. Instalando OpenAI 0.28...
pip install openai==0.28

echo 3. Instalando Jupyter Notebook...
pip install jupyter notebook

echo 4. Instalando Google Generative AI...
pip install -U google-generativeai

echo 5. Instalando Pandas 1.5.0...
pip install pandas==1.5.0

echo 6. Instalando NumPy 1.23.5...
pip install numpy==1.23.5

echo 7. Instalando dependencias adicionales...
pip install Pillow matplotlib ipywidgets requests

echo 8. Configurando Jupyter widgets...
jupyter nbextension enable --py widgetsnbextension --sys-prefix

echo 9. Verificando instalación...
python -c "import openai, google.generativeai, pandas, numpy, jupyter, ipywidgets; print('✅ ¡Instalación completada!')"

echo.
echo 🎉 ¡Listo! Para usar:
echo 1. conda activate eduia
echo 2. cd tu\proyecto
echo 3. jupyter notebook
pause
```

---

## 🔧 Troubleshooting Específico

### Problema 1: "OpenAI 0.28 no es compatible"
```bash
# Solución: Forzar instalación
pip install --force-reinstall openai==0.28
```

### Problema 2: "Conflicto Pandas/NumPy"
```bash
# Solución: Desinstalar e instalar en orden
pip uninstall pandas numpy -y
pip install numpy==1.23.5
pip install pandas==1.5.0
```

### Problema 3: "Google Generative AI no se instala"
```bash
# Solución: Actualizar pip y reintentar
pip install --upgrade pip
pip install -U google-generativeai
```

### Problema 4: "Widgets no aparecen en Jupyter"
```bash
# Solución completa
pip uninstall ipywidgets -y
pip install ipywidgets
jupyter nbextension enable --py widgetsnbextension --sys-prefix
# Reiniciar Jupyter completamente
```

### Problema 5: "Jupyter no inicia"
```bash
# Verificar entorno activo
conda activate eduia
which python  # Debe mostrar ruta del entorno eduia

# Reinstalar Jupyter si es necesario
pip install --force-reinstall jupyter notebook
```

---

## 📝 Comandos de Referencia Rápida

### Activación y Uso Diario
```bash
# Activar entorno
conda activate eduia

# Ir al proyecto  
cd ruta/a/eduia-personalizada

# Iniciar Jupyter
jupyter notebook

# Verificar librerías (si hay dudas)
python -c "import openai; print(openai.__version__)"
```

### Actualización de Dependencias
```bash
# Actualizar solo Google AI (mantener otras versiones fijas)
pip install -U google-generativeai

# Ver qué está instalado
pip list | grep -E "(openai|pandas|numpy|jupyter)"
```

### Backup del Entorno
```bash
# Exportar entorno para backup
conda env export --name eduia > eduia_environment.yml

# Recrear entorno desde backup
conda env create -f eduia_environment.yml
```

---

## ✅ Checklist de Instalación Completa

- [ ] Miniconda instalado y funcionando
- [ ] Entorno `eduia` creado con Python 3.9
- [ ] OpenAI 0.28 instalado
- [ ] Jupyter Notebook instalado
- [ ] Google Generative AI instalado  
- [ ] Pandas 1.5.0 instalado
- [ ] NumPy 1.23.5 instalado
- [ ] Dependencias adicionales instaladas
- [ ] Jupyter widgets configurados
- [ ] Verificación ejecutada exitosamente
- [ ] Jupyter Notebook inicia correctamente

---

## 📚 Documentación de Versiones

| Librería | Versión | Razón |
|----------|---------|--------|
| **openai** | 0.28 | Mejor compatibilidad de requests |
| **pandas** | 1.5.0 | Estabilidad y compatibilidad |
| **numpy** | 1.23.5 | Compatible con Pandas 1.5.0 |
| **jupyter** | Latest | Servidor local funcional |
| **google-generativeai** | Latest | Alternativa y backup |

---

*Guía creada para no olvidar los requerimientos específicos del proyecto EduIA Personalizada*

**Autor**: José Cisneros | **Curso**: IA - CoderFlex  
**Última actualización**: Junio 2025