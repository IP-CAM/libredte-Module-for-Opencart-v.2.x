Plugin LibreDTE para OpenCart 2
===============================

Este plugin permite integrar OpenCart 2 con la aplicación web de LibreDTE.

Funcionalidades implementadas:

- API para obtener datos de los items desde la página de emisión de LibreDTE.
- Enlaces directos a la aplicación de LibreDTE utilizando preautenticación.
- Generación de factura (33 o 34) desde la página de orden de compra de OpenCart.
- Acceso desde la página de la orden de compra a la página del DTE en LibreDTE.

Este repositorio se creó a partir de la
[versión original del Plugin de LibreDTE de OpenCart](https://github.com/LibreDTE/libredte-plugin-opencart/releases/tag/v2.0.0-alpha),
que fue migrado a versión 3.

Licencia
--------

Este código está liberado bajo la licencia de software libre [AGPL](http://www.gnu.org/licenses/agpl-3.0.en.html).
Para detalles sobre cómo se puede utilizar, modificar y/o distribuir este plugin revisar los términos de la licencia.
También tiene detalles, en español, sobre esto en los [términos y condiciones](https://legal.libredte.cl) de LibreDTE.

API
---

URL items:

    https://example.com/index.php?route=libredte/product&column=sku&product_id=

Contribuir al proyecto
----------------------

Si deseas contribuir con el proyecto, especialmente resolviendo alguna de las
[*issues* abiertas](https://github.com/LibreDTE/libredte-plugin-opencart2/issues) debes:

1. Hacer fork del proyecto en [GitHub](https://github.com/LibreDTE/libredte-plugin-opencart2)
2. Crear una *branch* para los cambios: git checkout -b nombre-branch
3. Modificar código: git commit -am 'Se agrega...'
4. Publicar cambios: git push origin nombre-branch
5. Crear un *pull request* para unir la nueva *branch* con esta versión oficial.

**IMPORTANTE**: antes de hacer un *pull request* verificar que el código
cumpla con los estándares [PSR-1](http://www.php-fig.org/psr/psr-1),
[PSR-2](http://www.php-fig.org/psr/psr-2) y
[PSR-4](http://www.php-fig.org/psr/psr-4).
