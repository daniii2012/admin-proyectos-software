# 5. El servidor de sistema de archivos

El servidor de sistema de archivos no forma parte del protocolo: es uno de los servidores de referencia que mantiene el proyecto MCP para mostrar cómo se construye uno (Model Context Protocol, 2026a). Se instala con Node.js como el paquete @modelcontextprotocol/server-filesystem y se le indica en la configuración del cliente a qué directorios puede acceder (Model Context Protocol, 2026b).

## Herramientas que expone

En mi instalación, el cliente listó 14 herramientas (captura 09):

- **Lectura:** read_file, read_text_file, read_multiple_files, read_media_file.
- **Escritura y edición:** write_file, edit_file, move_file, create_directory.
- **Exploración y búsqueda:** list_directory, list_directory_with_sizes, directory_tree, search_files, get_file_info.
- **Permisos:** list_allowed_directories.

## Cómo los directorios permitidos limitan el alcance

Los directorios se pasan como argumentos al arrancar el servidor; en mi configuración, solo C:\Users\Daniela\mcp-tarea2. El servidor comprueba cada ruta que recibe y rechaza las que quedan fuera de esa lista, aunque el modelo las pida. Lo comprobé pidiéndole un archivo fuera de la carpeta (captura 15).

## Qué pasaría sin ese límite

Sin directorios permitidos, o con una carpeta demasiado amplia como la raíz del disco o toda la carpeta de usuario, el modelo podría leer, modificar o borrar cualquier archivo al que mi cuenta tiene acceso: documentos personales, archivos de configuración, claves o contraseñas guardadas en archivos de texto. Una instrucción equivocada o una instrucción escondida dentro de un archivo afectaría todo el equipo y no solo una carpeta de prueba.

## Referencias

Model Context Protocol. (2026a). *Reference servers* [Repositorio]. GitHub. https://github.com/modelcontextprotocol/servers

Model Context Protocol. (2026b). *Connect to local MCP servers*. https://modelcontextprotocol.io/docs/develop/connect-local-servers
