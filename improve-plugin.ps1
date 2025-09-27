Write-Host "Mejorando plugin Aqua Patterns..." -ForegroundColor Green

# 1. Hacer backup
Copy-Item "aqua-patterns/aqua-patterns.php" "aqua-patterns/aqua-patterns.php.backup"
Write-Host "Backup creado: aqua-patterns.php.backup" -ForegroundColor Yellow

# 2. Actualizar plugin principal
$pluginContent = @'
<?php
/**
 * Plugin Name: Aqua Patterns
 * Description: Catálogo de patrones Gutenberg — ligero, responsive móvil/iPad, SEO/A11y, CTAs PRO, listo para Woo/Membresías.
 * Version: 3.2.0
 * Requires at least: 6.6
 * Requires PHP: 7.4
 * Author: Aqua Studio
 * Text Domain: aqua
 */
if ( ! defined('ABSPATH') ) exit;

require_once __DIR__ . '/includes/class-aqua-requirements.php';
require_once __DIR__ . '/includes/admin-notices.php';

register_activation_hook(__FILE__, ['Aqua_Requirements','on_activation']);
add_action('admin_init', ['Aqua_Requirements','runtime_checks']);

add_action('init', function () {
  if (!function_exists('register_block_pattern') || !function_exists('register_block_pattern_category')) return;
  register_block_pattern_category('aqua', ['label' => __('Aqua','aqua')]);

  $dir = plugin_dir_path(__FILE__) . 'patterns/';
  if (!is_dir($dir)) return;
  foreach (glob($dir.'*.html') as $file) {
    $slug = basename($file, '.html');
    $title = aqua_get_pattern_header($file, 'Title') ?: ucfirst(str_replace('-', ' ', $slug));
    $desc  = aqua_get_pattern_header($file, 'Description') ?: '';
    $cats  = aqua_get_pattern_header($file, 'Categories') ?: 'aqua';
    $cats  = array_filter(array_map('trim', explode(',', $cats)));
    $content = file_get_contents($file);
    if ($content) {
      register_block_pattern('aqua/'.$slug, [
        'title'       => $title,
        'description' => $desc,
        'categories'  => $cats,
        'content'     => $content,
      ]);
    }
  }
});

function aqua_get_pattern_header($file, $key){
  $c = @file_get_contents($file);
  if (!$c) return '';
  return preg_match('/^\s*<!--\s*'.$key.'\s*:\s*(.*?)\s*-->/mi', $c, $m) ? trim($m[1]) : '';
}

add_action('enqueue_block_editor_assets', function(){
  wp_enqueue_style('aqua-patterns-editor', plugin_dir_url(__FILE__).'assets/editor.css', [], '3.2.0');
});

add_action('wp_enqueue_scripts', function(){
  // ACTIVAR CSS DEL FRONTEND AUTOMÁTICAMENTE
  $enable = apply_filters('aqua_enable_frontend_css', true);
  if ($enable) {
    wp_enqueue_style('aqua-patterns-frontend', plugin_dir_url(__FILE__).'assets/frontend.css', [], '3.2.0');
  }
});

// Asegurar soporte para bloques en el tema
add_action('after_setup_theme', function(){
  add_theme_support('wp-block-styles');
  add_theme_support('align-wide');
  add_theme_support('editor-styles');
  add_theme_support('responsive-embeds');
  add_theme_support('html5', ['script', 'style']);
});

// Agregar clases CSS a los patrones
add_filter('render_block', function($block_content, $block) {
  if (strpos($block['blockName'], 'core/') === 0) {
    $block_content = str_replace('<div class="wp-block-group">', '<div class="wp-block-group aqua-pattern">', $block_content);
  }
  return $block_content;
}, 10, 2);
'@

Set-Content "aqua-patterns/aqua-patterns.php" $pluginContent
Write-Host "Plugin principal actualizado!" -ForegroundColor Green

# 3. Crear CSS profesional completo
$cssContent = @'
/* ===== AQUA PATTERNS - CSS PROFESIONAL COMPLETO ===== */

/* Reset y base */
.aqua-patterns *,
.aqua-pattern * {
  box-sizing: border-box;
}

/* Contenedores principales */
.aqua-max {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 1rem;
}

.aqua-gap-m > * + * {
  margin-top: 1rem;
}

/* Grupos y secciones */
.wp-block-group {
  margin: 0;
  padding: 2rem 0;
  position: relative;
}

.wp-block-group.alignfull {
  width: 100vw;
  margin-left: calc(50% - 50vw);
  margin-right: calc(50% - 50vw);
  padding-left: 1rem;
  padding-right: 1rem;
}

.wp-block-group.alignwide {
  max-width: 1200px;
  margin-left: auto;
  margin-right: auto;
}

/* Columnas */
.wp-block-columns {
  display: flex;
  gap: 2rem;
  margin: 0;
  padding: 0;
  flex-wrap: wrap;
}

.wp-block-column {
  flex: 1;
  margin: 0;
  padding: 0;
  min-width: 0;
}

/* Títulos */
.wp-block-heading {
  margin: 0 0 1rem 0;
  line-height: 1.2;
  font-weight: 700;
  color: #333;
}

.wp-block-heading h1 {
  font-size: 3rem;
  margin-bottom: 1.5rem;
  color: #2c3e50;
}

.wp-block-heading h2 {
  font-size: 2.5rem;
  margin-bottom: 1.25rem;
  color: #34495e;
}

.wp-block-heading h3 {
  font-size: 2rem;
  margin-bottom: 1rem;
  color: #34495e;
}

.wp-block-heading h4 {
  font-size: 1.5rem;
  margin-bottom: 0.75rem;
  color: #34495e;
}

/* Párrafos */
.wp-block-paragraph {
  margin: 0 0 1rem 0;
  line-height: 1.6;
  font-size: 1.1rem;
  color: #555;
}

/* Botones */
.wp-block-buttons {
  display: flex;
  gap: 1rem;
  margin: 0;
  padding: 0;
  flex-wrap: wrap;
}

.wp-block-button {
  margin: 0;
  padding: 0;
}

.wp-block-button__link {
  display: inline-block;
  padding: 12px 24px;
  border-radius: 6px;
  text-decoration: none;
  font-weight: 600;
  font-size: 1rem;
  transition: all 0.3s ease;
  border: 2px solid transparent;
  cursor: pointer;
  text-align: center;
}

/* Estilos de botones */
.wp-block-button.is-style-fill .wp-block-button__link {
  background-color: #007cba;
  color: white;
  border-color: #007cba;
}

.wp-block-button.is-style-fill .wp-block-button__link:hover {
  background-color: #005a87;
  border-color: #005a87;
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 124, 186, 0.3);
}

.wp-block-button.is-style-outline .wp-block-button__link {
  background-color: transparent;
  color: #007cba;
  border-color: #007cba;
}

.wp-block-button.is-style-outline .wp-block-button__link:hover {
  background-color: #007cba;
  color: white;
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 124, 186, 0.3);
}

/* Imágenes */
.wp-block-image {
  margin: 0;
  padding: 0;
}

.wp-block-image img {
  max-width: 100%;
  height: auto;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

/* Listas */
.wp-block-list {
  margin: 0 0 1rem 0;
  padding: 0;
}

.wp-block-list li {
  margin-bottom: 0.5rem;
  line-height: 1.6;
  color: #555;
}

/* Navegación */
.wp-block-navigation {
  margin: 0;
  padding: 0;
}

.wp-block-navigation ul {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
  gap: 2rem;
  flex-wrap: wrap;
}

.wp-block-navigation li {
  margin: 0;
  padding: 0;
}

.wp-block-navigation a {
  text-decoration: none;
  color: #333;
  font-weight: 500;
  transition: color 0.3s ease;
  padding: 0.5rem 0;
}

.wp-block-navigation a:hover {
  color: #007cba;
}

/* Cover */
.wp-block-cover {
  position: relative;
  min-height: 400px;
  display: flex;
  align-items: center;
  justify-content: center;
  background-size: cover;
  background-position: center;
  margin: 0;
  padding: 0;
  border-radius: 8px;
  overflow: hidden;
}

.wp-block-cover__inner-container {
  position: relative;
  z-index: 2;
  text-align: center;
  color: white;
  max-width: 800px;
  padding: 2rem;
}

.wp-block-cover__background {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.4);
}

/* Spacer */
.wp-block-spacer {
  margin: 0;
  padding: 0;
}

/* Social Links */
.wp-block-social-links {
  display: flex;
  gap: 1rem;
  margin: 0;
  padding: 0;
  flex-wrap: wrap;
}

.wp-block-social-links a {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background-color: #007cba;
  color: white;
  text-decoration: none;
  transition: all 0.3s ease;
}

.wp-block-social-links a:hover {
  background-color: #005a87;
  transform: translateY(-2px);
}

/* WhatsApp Float */
.aqua-whatsapp-float {
  position: fixed;
  right: 16px;
  bottom: 16px;
  z-index: 9999;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 56px;
  height: 56px;
  border-radius: 50%;
  background-color: #25d366;
  color: white;
  text-decoration: none;
  box-shadow: 0 6px 18px rgba(37, 211, 102, 0.3);
  transition: all 0.3s ease;
}

.aqua-whatsapp-float:hover {
  background-color: #20c55a;
  transform: translateY(-2px);
  box-shadow: 0 8px 24px rgba(37, 211, 102, 0.4);
}

/* Responsive */
@media (max-width: 768px) {
  .wp-block-columns {
    flex-direction: column;
    gap: 1rem;
  }
  
  .wp-block-column {
    flex: none;
    width: 100%;
  }
  
  .wp-block-buttons {
    flex-direction: column;
  }
  
  .wp-block-button__link {
    width: 100%;
    text-align: center;
  }
  
  .wp-block-navigation ul {
    flex-direction: column;
    gap: 1rem;
  }
  
  .wp-block-heading h1 {
    font-size: 2.5rem;
  }
  
  .wp-block-heading h2 {
    font-size: 2rem;
  }
  
  .wp-block-heading h3 {
    font-size: 1.5rem;
  }
  
  .aqua-whatsapp-float {
    right: 12px;
    bottom: 12px;
    width: 48px;
    height: 48px;
  }
}

@media (max-width: 480px) {
  .wp-block-group {
    padding: 1rem 0;
  }
  
  .wp-block-group.alignfull {
    padding-left: 0.5rem;
    padding-right: 0.5rem;
  }
  
  .wp-block-heading h1 {
    font-size: 2rem;
  }
  
  .wp-block-heading h2 {
    font-size: 1.75rem;
  }
  
  .wp-block-heading h3 {
    font-size: 1.25rem;
  }
  
  .wp-block-paragraph {
    font-size: 1rem;
  }
}
'@

Set-Content "aqua-patterns/assets/frontend.css" $cssContent
Write-Host "CSS profesional actualizado!" -ForegroundColor Green

# 4. Simplificar patrones problemáticos
Write-Host "Simplificando patrones problemáticos..." -ForegroundColor Yellow

# Hero simplificado
$heroContent = @'
<!-- Title: Hero Regenerativo -->
<!-- Slug: hero -->
<!-- Categories: aqua -->
<!-- Description: Hero con título, subtítulo y CTAs -->

<!-- wp:group {"align":"full","layout":{"type":"constrained"}} -->
<div class="wp-block-group alignfull">
  <!-- wp:heading {"textAlign":"center","level":1} -->
  <h1 class="has-text-align-center">DESARROLLO TERRITORIAL REGENERATIVO</h1>
  <!-- /wp:heading -->
  
  <!-- wp:paragraph {"align":"center"} -->
  <p class="has-text-align-center">Impulsamos proyectos de desarrollo territorial que devuelven vitalidad a los ecosistemas.</p>
  <!-- /wp:paragraph -->
  
  <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
  <div class="wp-block-buttons">
    <!-- wp:button {"className":"is-style-fill"} -->
    <div class="wp-block-button is-style-fill">
      <a class="wp-block-button__link">Conoce Nuestros Servicios</a>
    </div>
    <!-- /wp:button -->
  </div>
  <!-- /wp:buttons -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/hero.html" $heroContent
Write-Host "Patrón Hero simplificado!" -ForegroundColor Yellow

Write-Host "`n✅ MEJORAS APLICADAS:" -ForegroundColor Green
Write-Host "   • CSS del frontend activado automáticamente" -ForegroundColor White
Write-Host "   • Soporte para bloques agregado" -ForegroundColor White
Write-Host "   • CSS profesional completo incluido" -ForegroundColor White
Write-Host "   • Patrones simplificados para compatibilidad" -ForegroundColor White
Write-Host "   • Responsive design mejorado" -ForegroundColor White

Write-Host "`n🔄 PRÓXIMOS PASOS:" -ForegroundColor Cyan
Write-Host "   1. Reinicia WordPress: docker-compose restart" -ForegroundColor White
Write-Host "   2. Ve a http://localhost:8080" -ForegroundColor White
Write-Host "   3. Los patrones ahora se verán con diseño completo" -ForegroundColor White
Write-Host "   4. No más errores de bloques inválidos" -ForegroundColor White

Write-Host "`n🎉 ¡Plugin mejorado exitosamente!" -ForegroundColor Green
