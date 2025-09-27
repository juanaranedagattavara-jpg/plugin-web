<?php
/**
 * Plugin Name: Aqua Patterns
 * Description: Patrones Gutenberg editables y personalizables para desarrollo web profesional.
 * Version: 1.0.0
 * Requires at least: 6.6
 * Requires PHP: 7.4
 * Author: Aqua Studio
 * Text Domain: aqua
 * Domain Path: /languages
 */

if ( ! defined( 'ABSPATH' ) ) exit;

// Registrar categoría de patrones
add_action( 'init', function() {
    if ( ! function_exists( 'register_block_pattern_category' ) ) return;
    
    register_block_pattern_category( 'aqua', [
        'label' => __( 'Aqua Patterns', 'aqua' )
    ]);
});

// Registrar patrones automáticamente
add_action( 'init', function() {
    if ( ! function_exists( 'register_block_pattern' ) ) return;
    
    $patterns_dir = plugin_dir_path( __FILE__ ) . 'patterns/';
    if ( ! is_dir( $patterns_dir ) ) return;
    
    foreach ( glob( $patterns_dir . '*.html' ) as $file ) {
        $slug = basename( $file, '.html' );
        $title = aqua_get_pattern_header( $file, 'Title' ) ?: ucfirst( str_replace( '-', ' ', $slug ) );
        $desc = aqua_get_pattern_header( $file, 'Description' ) ?: '';
        $cats = aqua_get_pattern_header( $file, 'Categories' ) ?: 'aqua';
        $cats = array_filter( array_map( 'trim', explode( ',', $cats ) ) );
        
        $content = file_get_contents( $file );
        if ( $content ) {
            register_block_pattern( 'aqua/' . $slug, [
                'title' => $title,
                'description' => $desc,
                'categories' => $cats,
                'content' => $content,
            ]);
        }
    }
});

// Función para extraer metadatos de patrones
function aqua_get_pattern_header( $file, $key ) {
    $content = @file_get_contents( $file );
    if ( ! $content ) return '';
    
    $pattern = '/^\s*<!--\s*' . $key . '\s*:\s*(.*?)\s*-->/mi';
    return preg_match( $pattern, $content, $matches ) ? trim( $matches[1] ) : '';
}

// Encolar estilos del frontend
add_action( 'wp_enqueue_scripts', function() {
    $enable = apply_filters( 'aqua_enable_frontend_css', true );
    if ( $enable ) {
        wp_enqueue_style( 
            'aqua-patterns-frontend', 
            plugin_dir_url( __FILE__ ) . 'assets/frontend.css', 
            [], 
            '1.0.0' 
        );
    }
});

// Asegurar soporte para bloques
add_action( 'after_setup_theme', function() {
    add_theme_support( 'wp-block-styles' );
    add_theme_support( 'align-wide' );
    add_theme_support( 'editor-styles' );
    add_theme_support( 'responsive-embeds' );
    add_theme_support( 'html5', [ 'script', 'style' ] );
});
