# 2. El problema del aislamiento

Un LLM, por sí solo, recibe texto y devuelve texto. No abre archivos, no ejecuta comandos y no ve la pantalla del usuario. Para que pueda trabajar sobre un proyecto, otra aplicación tiene que ponerle ese acceso al alcance. Las razones por las que no lo tiene de entrada son de dos tipos.

## Razones de arquitectura

- **Corre en un servidor remoto.** El modelo se ejecuta en la infraestructura de su proveedor, no en la computadora del usuario. Esa máquina no tiene ningún canal hacia el disco local.
- **Su entrada y su salida son solo texto.** Todo lo que sabe de un archivo es lo que alguien copie y pegue en la conversación; todo lo que produce es texto que alguien debe llevar de vuelta al archivo.
- **No conserva el entorno.** Cada respuesta se calcula a partir del texto recibido; el modelo no mantiene una conexión abierta con el equipo del usuario.

## Razones de seguridad

- **Aislamiento.** Que el modelo no pueda tocar el sistema de archivos limita el daño de cualquier error. Dar acceso significa abrir una puerta que antes estaba cerrada.
- **Consentimiento.** La especificación de MCP exige que el usuario consienta y entienda los accesos a sus datos y las acciones que se realizan, y que los clientes obtengan su permiso antes de invocar una herramienta (Model Context Protocol, 2026).
- **Inyección de instrucciones.** Si el modelo lee contenido ajeno, ese contenido puede traer instrucciones escondidas que el modelo confunda con órdenes del usuario. Este ataque se llama inyección indirecta de instrucciones (Greshake et al., 2023).

## Referencias

Greshake, K., Abdelnabi, S., Mishra, S., Endres, C., Holz, T., y Fritz, M. (2023). *Not what you've signed up for: Compromising real-world LLM-integrated applications with indirect prompt injection*. arXiv. https://arxiv.org/abs/2302.12173

Model Context Protocol. (2026). *Specification* (revisión 2026-07-28). https://modelcontextprotocol.io/specification
