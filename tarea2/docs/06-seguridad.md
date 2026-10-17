# 6. Seguridad

La especificación advierte que MCP permite acceso arbitrario a datos y rutas de ejecución de código, y que por eso exige consentimiento y control del usuario, privacidad de los datos y cautela con las herramientas (Model Context Protocol, 2026).

## Riesgos

| Riesgo | Qué significa |
|:--|:--|
| Instrucciones escondidas en un archivo | Un archivo puede contener texto que el modelo lea como una orden y no como simple contenido (inyección indirecta de instrucciones; Greshake et al., 2023) |
| Acceso fuera del directorio autorizado | Una configuración demasiado amplia, o una ruta que escapa de la carpeta, permitiría llegar a archivos que no debían tocarse |
| Escritura o borrado no deseados | Herramientas como write_file, edit_file o move_file pueden sobrescribir o mover archivos importantes por un error del modelo o por una instrucción escondida |

## Mitigaciones

- **Confirmación humana.** Claude Desktop pide permiso antes de usar cada herramienta, y la especificación exige el consentimiento del usuario antes de invocarla (Model Context Protocol, 2026).
- **Alcance limitado.** Autorizar solo una carpeta creada para el trabajo, como hice con mcp-tarea2, y nunca la raíz del disco ni la carpeta de usuario completa.
- **Solo lectura.** Si basta con consultar archivos, no habilitar las herramientas de escritura o dar al servidor una carpeta que no importe perder.
- **Revisar lo que expone el servidor.** Leer la lista de herramientas antes de aceptar. La especificación indica que las descripciones de las herramientas deben considerarse no confiables, a menos que vengan de un servidor de confianza (Model Context Protocol, 2026).

## Referencias

Greshake, K., Abdelnabi, S., Mishra, S., Endres, C., Holz, T., y Fritz, M. (2023). *Not what you've signed up for: Compromising real-world LLM-integrated applications with indirect prompt injection*. arXiv. https://arxiv.org/abs/2302.12173

Model Context Protocol. (2026). *Specification* (revisión 2026-07-28). https://modelcontextprotocol.io/specification
