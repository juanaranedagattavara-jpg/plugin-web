<?php
/**
 * Plugin Name: Aqua Patterns
 * Description: Catálogo de patrones Gutenberg — ligero, responsive móvil/iPad, SEO/A11y, CTAs PRO, listo para Woo/Membresías.
 * Version: 3.1.0
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
  wp_enqueue_style('aqua-patterns-editor', plugin_dir_url(__FILE__).'assets/editor.css', [], '3.1.0');
});

add_action('wp_enqueue_scripts', function(){
  $enable = apply_filters('aqua_enable_frontend_css', false);
  if ($enable) {
    wp_enqueue_style('aqua-patterns-frontend', plugin_dir_url(__FILE__).'assets/frontend.css', [], '3.1.0');
  }
});
