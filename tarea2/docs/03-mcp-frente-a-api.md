# 3. MCP frente a una API

## Qué es una API

Una API es un contrato entre programas: define qué se puede pedir, con qué formato y qué se devuelve. Quien programa la aplicación decide de antemano qué llamada se hace y en qué momento, y escribe ese código a mano para cada servicio.

## Qué es MCP

MCP (Model Context Protocol) es un protocolo abierto que usa mensajes JSON-RPC 2.0 para conectar aplicaciones con modelos de lenguaje. Un servidor MCP publica un catálogo de herramientas, y el modelo lo descubre en el momento y decide cuál usar según lo que se le pida (Model Context Protocol, 2026; JSON-RPC Working Group, 2013).

## Comparación

| Aspecto | API | MCP |
|:--|:--|:--|
| Quién decide qué se invoca | El programador, al escribir el código | El modelo, en el momento, según la conversación |
| Cómo se descubren las capacidades | Se leen en la documentación antes de programar | El cliente le pide al servidor su catálogo de herramientas |
| Acoplamiento | Alto: la aplicación queda escrita para esa API | Bajo: el cliente funciona con cualquier servidor que hable el protocolo |
| Formato de los mensajes | Cada API define el suyo (REST, GraphQL, etc.) | Uno común: JSON-RPC 2.0 |
| Autenticación y consentimiento | Cada API tiene la suya (claves, OAuth) y el consentimiento depende de la aplicación | La especificación exige el consentimiento del usuario antes de invocar una herramienta y define cómo autorizar servidores remotos |
| Reutilización entre aplicaciones | Se reescribe la integración en cada aplicación | Un mismo servidor sirve a todos los clientes compatibles |

## MCP no sustituye a las APIs

Casi siempre, un servidor MCP envuelve una API que ya existe: traduce una función de esa API a una herramienta que el modelo puede descubrir y llamar. Por eso MCP depende de las APIs y no las reemplaza; añade una capa común encima de ellas.

## Referencias

JSON-RPC Working Group. (2013). *JSON-RPC 2.0 specification*. https://www.jsonrpc.org/specification

Model Context Protocol. (2026). *Specification* (revisión 2026-07-28). https://modelcontextprotocol.io/specification

Vida MRR - Programacion web. (s. f.). *Diferencia entre API y MCP* [Video]. YouTube. https://youtu.be/FdVkE8u2C_Q
