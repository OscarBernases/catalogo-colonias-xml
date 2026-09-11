<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <title>Catálogo de Colonias</title>
                <link rel="stylesheet" href="css/styles.css"/>
            </head>
            <body>
                <h1>Catálogo de Colonias</h1>
                
                <!-- Todos -->
                <h2>Todos</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Género</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Disponible</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="catalogo/producto">
                            <xsl:sort select="@id" data-type="text" order="ascending"/>
                            <tr>
                                <xsl:if test="@disponible='no'">
                                    <xsl:attribute name="class">agotado</xsl:attribute>
                                </xsl:if>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="marca"/></td>
                                <td><xsl:value-of select="@genero"/></td>
                                <td><xsl:value-of select="precio"/>€ (<xsl:value-of select="precio/@ml"/>ml)</td>
                                <td><xsl:value-of select="stock"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="@disponible='si'">Sí</xsl:when>
                                        <xsl:otherwise>No</xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                
                <!-- Masculino -->
                <h2>Masculino</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Género</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Disponible</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="catalogo/producto[@genero='masculino']">
                            <xsl:sort select="@id" data-type="text" order="ascending"/>
                            <tr>
                                <xsl:if test="@disponible='no'">
                                    <xsl:attribute name="class">agotado</xsl:attribute>
                                </xsl:if>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="marca"/></td>
                                <td><xsl:value-of select="@genero"/></td>
                                <td><xsl:value-of select="precio"/>€ (<xsl:value-of select="precio/@ml"/>ml)</td>
                                <td><xsl:value-of select="stock"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="@disponible='si'">Sí</xsl:when>
                                        <xsl:otherwise>No</xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                
                <!-- Femenino -->
                <h2>Femenino</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Género</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Disponible</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="catalogo/producto[@genero='femenino']">
                            <xsl:sort select="@id" data-type="text" order="ascending"/>
                            <tr>
                                <xsl:if test="@disponible='no'">
                                    <xsl:attribute name="class">agotado</xsl:attribute>
                                </xsl:if>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="marca"/></td>
                                <td><xsl:value-of select="@genero"/></td>
                                <td><xsl:value-of select="precio"/>€ (<xsl:value-of select="precio/@ml"/>ml)</td>
                                <td><xsl:value-of select="stock"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="@disponible='si'">Sí</xsl:when>
                                        <xsl:otherwise>No</xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                
                <!-- Disponibles -->
                <h2>Disponibles</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Género</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Disponible</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="catalogo/producto[@disponible='si']">
                            <xsl:sort select="@id" data-type="text" order="ascending"/>
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="marca"/></td>
                                <td><xsl:value-of select="@genero"/></td>
                                <td><xsl:value-of select="precio"/>€ (<xsl:value-of select="precio/@ml"/>ml)</td>
                                <td><xsl:value-of select="stock"/></td>
                                <td>Sí</td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                
                <!-- Agotados -->
                <h2>Agotados</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Género</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Disponible</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="catalogo/producto[@disponible='no']">
                            <xsl:sort select="@id" data-type="text" order="ascending"/>
                            <tr class="agotado">
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="marca"/></td>
                                <td><xsl:value-of select="@genero"/></td>
                                <td><xsl:value-of select="precio"/>€ (<xsl:value-of select="precio/@ml"/>ml)</td>
                                <td><xsl:value-of select="stock"/></td>
                                <td>No</td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                
                <!-- Por precio -->
                <h2>Por Precio</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Género</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Disponible</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="catalogo/producto">
                            <xsl:sort select="precio" data-type="number" order="ascending"/>
                            <tr>
                                <xsl:if test="@disponible='no'">
                                    <xsl:attribute name="class">agotado</xsl:attribute>
                                </xsl:if>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="marca"/></td>
                                <td><xsl:value-of select="@genero"/></td>
                                <td><xsl:value-of select="precio"/>€ (<xsl:value-of select="precio/@ml"/>ml)</td>
                                <td><xsl:value-of select="stock"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="@disponible='si'">Sí</xsl:when>
                                        <xsl:otherwise>No</xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                
                <p>
                    Total: <b><xsl:value-of select="count(catalogo/producto)"/></b> |
                    Disponibles: <b><xsl:value-of select="count(catalogo/producto[@disponible='si'])"/></b>
                </p>
                <p>
                    Precio total: <b><xsl:value-of select="sum(catalogo/producto/precio)"/></b>€ |
                    Precio medio: <b><xsl:value-of select="sum(catalogo/producto/precio) div count(catalogo/producto)"/></b>€
                </p>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>