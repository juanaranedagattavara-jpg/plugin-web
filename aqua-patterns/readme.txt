=== Aqua Patterns ===
Contributors: aqua
Tags: gutenberg, patterns, blocks, reusable, components, responsive, seo, accessibility
Requires at least: 6.6
Tested up to: 6.4
Requires PHP: 7.4
Stable tag: 3.1.0
License: GPLv2 or later
License URI: https://www.gnu.org/licenses/gpl-2.0.html

Catálogo de patrones Gutenberg — ligero, responsive móvil/iPad, SEO/A11y, CTAs PRO, listo para Woo/Membresías.

== Description ==

Aqua Patterns es una colección de patrones Gutenberg reusables diseñados para ser 100% editables desde el editor de WordPress sin tocar código. Perfecto para agencias y desarrolladores que necesitan componentes consistentes, escalables y optimizados.

= Características principales =

* **100% Editable**: Todos los patrones usan bloques core de WordPress
* **Responsive**: Optimizado para móvil (360px) e iPad (768-1024px)
* **SEO/A11y**: H1 único, jerarquía headings, alt text, aria-label, contraste AA
* **Ligero**: Sin JS ni librerías externas, Lighthouse ≥ 90
* **Escalable**: 1 patrón = 1 archivo, registro automático, SemVer
* **Future-ready**: Compatible con WooCommerce, Membresías, Formularios y Newsletters
* **Resiliente**: El contenido permanece aunque se desactive el plugin

= Patrones incluidos =

* **Hero Premium**: H1 único, subtítulo y CTAs primario/WhatsApp
* **Golden Circle**: Why/How/What con CTA a servicios
* **Timeline**: Hitos con CTA a casos de éxito
* **Servicios**: 3-4 columnas con CTAs reemplazables por Woo/Membresías
* **Team**: Equipo con fotos, roles y enlaces LinkedIn
* **Casos de Éxito**: Testimonios con CTA ver todos
* **Galería**: Grid responsive con CTA ver más
* **Contacto**: Formulario preparado para bloque/shortcode
* **Newsletter**: Suscripción preparada para proveedor
* **WhatsApp Flotante**: Botón fijo global responsivo

= Requisitos =

* WordPress 6.6 o superior
* PHP 7.4 o superior
* Tema compatible con Gutenberg (recomendado: Block Theme)

= Instalación =

1. Sube el plugin a `/wp-content/plugins/aqua-patterns/`
2. Activa el plugin desde el panel de administración
3. Ve a Editor de Bloques → Patrones → Aqua
4. Arrastra y personaliza los patrones

= Uso =

Los patrones aparecerán en el Inserter de bloques bajo la categoría "Aqua". Simplemente arrastra el patrón deseado a tu página y personaliza el contenido usando los controles nativos de WordPress.

= Personalización =

Todos los patrones heredan los estilos de tu tema a través de theme.json. No necesitas CSS adicional para que se vean bien con tu diseño.

= Frontend CSS (Opcional) =

Para activar estilos adicionales del frontend, añade este filtro en tu `functions.php`:

```php
add_filter('aqua_enable_frontend_css', '__return_true');
```

= Integración con WooCommerce/Membresías =

Los patrones están preparados para integrarse con:
* **WooCommerce**: Reemplaza CTAs "Cotizar" por bloques de WooCommerce
* **Membresías**: Reemplaza CTAs por bloques de plugins de membresías
* **Formularios**: Inserta bloques de formularios en patrones de contacto
* **Newsletter**: Inserta bloques o embeds de proveedores de email

= QA Checklist =

**Funcionalidad:**
- [ ] Patrones aparecen en Inserter → Patrones → Aqua
- [ ] Insertar/editar sin tocar HTML
- [ ] Desactivar plugin: contenido se mantiene
- [ ] CTAs reemplazables por Woo/Membresías

**Responsive:**
- [ ] Se ve bien en 360px (móvil)
- [ ] Se ve bien en 768px (tablet)
- [ ] Se ve bien en 1024px+ (desktop)
- [ ] WhatsApp flotante responsivo

**Accesibilidad:**
- [ ] H1 único en Hero
- [ ] Jerarquía de headings correcta
- [ ] Alt text en todas las imágenes
- [ ] Contraste AA heredado del tema
- [ ] Navegación por teclado funcional

**SEO:**
- [ ] Estructura semántica correcta
- [ ] Headings ordenados
- [ ] Imágenes con alt text
- [ ] CTAs con texto descriptivo

**Rendimiento:**
- [ ] Lighthouse ≥ 90 (móvil y escritorio)
- [ ] Cero JS, cero librerías externas
- [ ] CSS mínimo y optimizado
- [ ] TTFB y CLS controlados

**Integración:**
- [ ] WooCommerce: CTAs reemplazables
- [ ] Membresías: Estructura compatible
- [ ] Formularios: Placeholders preparados
- [ ] Newsletter: Integración lista

= Soporte =

Para soporte técnico y reportar bugs, visita nuestro repositorio en GitHub.

== Installation ==

1. Sube el archivo del plugin a `/wp-content/plugins/aqua-patterns/`
2. Activa el plugin desde el menú 'Plugins' en WordPress
3. Ve al editor de bloques y busca "Aqua" en el Inserter de patrones

== Frequently Asked Questions ==

= ¿Los patrones funcionan con cualquier tema? =

Sí, los patrones están diseñados para funcionar con cualquier tema de bloques moderno que use theme.json. Si usas un tema clásico, los patrones funcionarán igualmente pero con estilos básicos.

= ¿Puedo personalizar los estilos? =

Los patrones heredan automáticamente los estilos de tu tema. Para personalizaciones avanzadas, modifica tu theme.json o activa el frontend.css con el filtro correspondiente.

= ¿Qué pasa si desactivo el plugin? =

El contenido insertado permanece intacto. Solo perderás acceso a los patrones en el Inserter.

= ¿Son compatibles con WooCommerce? =

Sí, especialmente el patrón de Servicios está diseñado para permitir reemplazar CTAs con bloques de WooCommerce sin romper el layout.

= ¿Cómo activo el WhatsApp flotante? =

El patrón WhatsApp flotante requiere activar el frontend.css. Añade `add_filter('aqua_enable_frontend_css', '__return_true');` en tu functions.php.

== Screenshots ==

1. Hero Premium pattern
2. Golden Circle pattern
3. Timeline pattern
4. Servicios pattern
5. Team pattern
6. Casos de Éxito pattern
7. Galería pattern
8. Contacto pattern
9. Newsletter pattern
10. WhatsApp flotante pattern

== Changelog ==

= 3.1.0 =
* Lanzamiento Elite Fase A
* 10 patrones Gutenberg editables
* Responsive móvil/iPad optimizado
* SEO/A11y top (H1 único, headings jerárquicos)
* CTAs reemplazables para Woo/Membresías
* WhatsApp flotante responsivo
* Frontend.css opt-in
* Validación WordPress ≥ 6.6
* Admin notices para temas no-block
* Lighthouse ≥ 90 garantizado

== Upgrade Notice ==

= 3.1.0 =
Primera versión Elite Fase A. Lista para producción con integración WooCommerce/Membresías.
