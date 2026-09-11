# Catálogo de Colonias XML

Catálogo de perfumería estructurado en XML, con validación de datos mediante DTD y XSD, y visualización en el navegador a través de una transformación XSLT a HTML.

## Descripción

Este proyecto almacena un catálogo de colonias como datos estructurados en XML. La información puede validarse frente a dos definiciones de esquema distintas (DTD y XSD) y se presenta al usuario final como una página HTML generada dinámicamente mediante una hoja de estilos XSLT, sin necesidad de un backend.

## Características

- Datos del catálogo centralizados en un único documento XML.
- Validación de la estructura y el contenido mediante DTD.
- Validación adicional y más estricta mediante XSD, incluyendo restricciones de formato en identificadores, valores permitidos y rangos numéricos.
- Transformación automática a HTML en el navegador mediante XSLT, sin procesamiento en servidor.
- Varias vistas del catálogo generadas a partir de los mismos datos: listado completo, por género, por disponibilidad y ordenado por precio.
- Cálculo automático de totales y estadísticas del catálogo (número de productos, disponibles, precio total y precio medio).

## Estructura del proyecto

```
catalogo-colonias-xml/
├── catalogo.xml             Datos del catálogo
├── catalogo.dtd             Definición de tipo de documento (validación)
├── catalogo.xsd             Esquema XML (validación)
├── catalogo.xsl             Hoja de transformación XSLT
├── css/
│   └── styles.css           Hoja de estilos de la vista HTML resultante
└── README.md
```

## Contenido del catálogo

Cada producto del catálogo incluye la siguiente información:

| Campo | Descripción |
|---|---|
| Identificador | Código único del producto |
| Nombre | Nombre comercial de la colonia |
| Marca | Marca del producto |
| Género | Masculino, femenino o unisex |
| Precio | Precio en euros, junto con el formato en mililitros |
| Stock | Unidades disponibles |
| Disponibilidad | Indica si el producto está actualmente disponible |

## Validación de datos

El catálogo puede validarse de dos formas:

- **DTD**: define la estructura básica del documento (elementos obligatorios, orden y atributos requeridos).
- **XSD**: añade restricciones más precisas, como el formato del identificador, los valores permitidos para género y disponibilidad, y que el precio y el stock sean valores numéricos válidos (positivos y no negativos, respectivamente).

## Visualización

Al abrir `catalogo.xml` en un navegador, la transformación XSLT genera automáticamente una página HTML con varias tablas:

- **Todos**: listado completo del catálogo.
- **Masculino** y **Femenino**: productos filtrados por género.
- **Disponibles** y **Agotados**: productos filtrados por disponibilidad, resaltando visualmente los agotados.
- **Por precio**: listado ordenado de menor a mayor precio.

Al final de la página se muestran también el número total de productos, el número de disponibles, el precio total del catálogo y el precio medio por producto.

## Cómo verlo

Basta con abrir el archivo `catalogo.xml` directamente en un navegador. Gracias a la referencia a la hoja de estilos XSLT incluida en el propio documento, el navegador aplicará la transformación de forma automática y mostrará el catálogo ya formateado.

## Tecnologías utilizadas

- XML
- DTD
- XSD (XML Schema)
- XSLT
- CSS3

## Autoría

Proyecto desarrollado en el marco de la asignatura de Lenguajes de Marcas.
