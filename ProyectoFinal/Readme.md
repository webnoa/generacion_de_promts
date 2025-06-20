# 🎓 Proyecto Final: Análisis Comparativo de Ecosistemas de IA (OpenAI vs. Google)

**Desarrollado por**: José R. Cisneros  
**Curso**: Inteligencia Artificial - Generación de Prompts (Comisión 84185)  
**Profesor**: Ezequiel Tartaglia  
**Entrega**: Proyecto Final

---

## 📄 Resumen del Proyecto

Este proyecto es un **banco de pruebas (benchmark) avanzado** diseñado para realizar un análisis comparativo, profundo y basado en datos, entre los ecosistemas de Inteligencia Artificial de **OpenAI (GPT-4 + DALL-E 3)** y **Google (Gemini)**. El sistema evalúa el rendimiento de cada plataforma en una tarea concreta: la generación de contenido educativo multimodal (texto e imágenes).

La evaluación se enriquece mediante tres pilares fundamentales:
1.  **Generación Multimodal:** Se compara la capacidad de cada ecosistema para producir tanto explicaciones textuales como recursos visuales de apoyo.
2.  **Juez de IA:** Un modelo de lenguaje neutral (Gemini Flash) actúa como un evaluador imparcial, puntuando objetivamente la calidad de los textos generados en criterios como claridad, creatividad y precisión.
3.  **Análisis Cuantitativo:** Se miden y comparan métricas clave como el **costo estimado** por cada generación completa y el **tiempo de respuesta** de las APIs.

El resultado final es un **dashboard interactivo** dentro de un Jupyter Notebook que permite explorar los datos, visualizar los trade-offs y tomar decisiones informadas sobre qué tecnología es más adecuada para un caso de uso específico.

---

## 🎯 Objetivos del Proyecto

### Objetivo General
Determinar, a través de una metodología experimental y basada en datos, cuál de los ecosistemas de IA (OpenAI o Google) ofrece la combinación óptima de **calidad, costo y rendimiento** para la tarea de generación automática de contenido educativo multimodal.

### Objetivos Específicos
1.  **Implementar un sistema de comparación automatizado** que interactúe con las APIs de ambos proveedores.
2.  **Generar automáticamente contenido textual e imágenes** para un conjunto definido de temas y niveles educativos.
3.  **Evaluar objetivamente la calidad del texto** utilizando un "Juez de IA" para obtener puntuaciones numéricas.
4.  **Calcular y registrar el costo estimado** y el tiempo de ejecución de cada experimento.
5.  **Presentar los resultados en un formato claro y accesible**, combinando tablas detalladas y un dashboard interactivo para el análisis visual.
6.  **Formular una conclusión y recomendación final** basada en la evidencia recopilada.

---

## 🔬 Metodología

El proyecto se estructura como un experimento controlado:
1.  **Definición de Escenarios:** Se selecciona un tema y un nivel educativo.
2.  **Generación Paralela:** Para el mismo escenario, se solicita a ambos ecosistemas (OpenAI y Google) que generen una explicación textual y una imagen relevante.
    *   **OpenAI:** Usa GPT-4 para el texto y DALL-E 3 para la imagen.
    *   **Google:** Usa Gemini Flash para el texto y el modelo `imagen-2` para la imagen.
3.  **Evaluación por Juez:** Un tercer modelo de IA (Gemini Flash) recibe ambos textos y los puntúa a ciegas.
4.  **Recolección de Métricas:** Se registran los tiempos de respuesta de las APIs y se estima el costo de cada operación.
5.  **Análisis y Visualización:** Todos los datos se consolidan en un DataFrame de `pandas`. Un dashboard interactivo permite al usuario final filtrar y visualizar los resultados, facilitando la identificación de tendencias y conclusiones.

---

## 🛠️ Herramientas y Tecnologías

| Componente | Tecnología Utilizada | Propósito Principal |
| :--- | :--- | :--- |
| **Modelos de Texto** | **OpenAI GPT-4**, **Google Gemini 1.5 Flash** | Generación de explicaciones educativas y prompts. |
| **Modelos de Imagen** | **OpenAI DALL-E 3**, **Google Imagen 2** | Generación de recursos visuales de apoyo. |
| **Juez de IA** | **Google Gemini 1.5 Flash** | Evaluación objetiva de la calidad del texto. |
| **Lenguaje y Entorno** | **Python 3.9+**, **Jupyter Notebook** | Lógica de negocio, orquestación de APIs y presentación. |
| **Análisis de Datos** | **Pandas** | Estructuración y manipulación de los resultados. |
| **Visualización** | **Matplotlib**, **IPyWidgets** | Creación de gráficos y del dashboard interactivo. |
| **Interacción API** | Librerías `openai` y `google-generativeai` | Conexión y comunicación con los servicios de IA. |

---

## 🚀 Implementación y Conclusiones

La implementación completa se encuentra en el archivo Jupyter Notebook adjunto. El código está encapsulado en una clase `IAComparator` modular y reutilizable.

Los resultados demuestran un interesante equilibrio entre las plataformas. Mientras que OpenAI GPT-4 tiende a producir textos con una ligera ventaja en precisión académica, el ecosistema de Google Gemini se muestra notablemente más eficiente en términos de costo. El dashboard interactivo permite visualizar claramente este trade-off, concluyendo que la "mejor" solución depende de las prioridades del proyecto: **máxima calidad (OpenAI) vs. máximo retorno de la inversión (Google)**.

Este proyecto no solo responde a una pregunta, sino que proporciona una **herramienta y una metodología** para que otros puedan realizar análisis similares y tomar decisiones tecnológicas basadas en datos.
