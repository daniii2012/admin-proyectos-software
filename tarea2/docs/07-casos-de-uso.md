# 7. Casos de uso

Varias herramientas actuales usan MCP para trabajar sobre repositorios completos sin que el usuario suba archivos a mano. El proyecto mantiene una lista de clientes compatibles (Model Context Protocol, 2026).

| Herramienta | Qué es | Cómo se relaciona con MCP |
|:--|:--|:--|
| Claude Desktop | Aplicación de escritorio de Anthropic | Conecta servidores MCP locales, como el de sistema de archivos que instalé |
| Claude Code | Herramienta de programación de Anthropic para la línea de comandos | Se conecta a servidores MCP y trabaja sobre el directorio del proyecto |
| Visual Studio Code | Editor de Microsoft | Admite servidores MCP en el modo agente de su asistente |
| Cursor | Editor de código con asistente de IA | Admite servidores MCP |
| Google Antigravity | Entorno de desarrollo (IDE) de Google | Es un entorno de desarrollo; no debe confundirse con un modelo |

Una aclaración de nombres: Qwen es una familia de modelos de lenguaje, no una plataforma; los modelos Qwen se pueden usar dentro de herramientas que sí son clientes MCP.

## Cómo editan repositorios completos

Estas herramientas se ejecutan en la computadora del desarrollador o con acceso a su carpeta de proyecto. El servidor MCP expone herramientas para listar, leer, buscar y modificar archivos, y el modelo las llama según lo que se le pida. Así puede recorrer el repositorio, leer los archivos que necesite y escribir los cambios directamente en el disco, sin copiar y pegar texto ni subir archivos uno por uno.

## Referencias

Model Context Protocol. (2026). *Example clients*. https://modelcontextprotocol.io/clients
