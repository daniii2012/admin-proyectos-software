# 4. Arquitectura

La especificación que consulté es la revisión **2026-07-28** de Model Context Protocol, consultada el 17 de octubre de 2026. La versión cambia seguido, por eso se anota.

## Host, cliente y servidor

La especificación define tres roles (Model Context Protocol, 2026):

- **Host:** la aplicación con el modelo, que inicia las conexiones.
- **Cliente:** el conector que vive dentro del host y habla con un servidor.
- **Servidor:** el servicio que ofrece contexto y capacidades.

En lo que instalé para esta tarea:

| Rol | Quién es |
|:--|:--|
| Host | Claude Desktop |
| Cliente | El conector de MCP integrado en Claude Desktop |
| Servidor | El servidor de sistema de archivos (@modelcontextprotocol/server-filesystem), que Claude Desktop arranca con cmd /c npx y limita a la carpeta mcp-tarea2 |

## Primitivas

- **Del servidor:** tools (funciones que el modelo puede ejecutar), resources (contexto y datos) y prompts (mensajes y flujos con plantilla).
- **Del cliente:** elicitation, que permite que el servidor pida información adicional al usuario. En versiones anteriores de la especificación también se describían los roots, con los que el cliente indica al servidor en qué directorios puede operar.

## Transportes

- **stdio:** el cliente arranca el servidor como un proceso local y se comunican por su entrada y salida estándar. Es lo que usa el servidor de archivos de esta tarea.
- **Streamable HTTP:** el servidor está en una dirección de red y se comunica por HTTP, para servidores remotos.

## Referencias

Model Context Protocol. (2026). *Specification* (revisión 2026-07-28). https://modelcontextprotocol.io/specification
