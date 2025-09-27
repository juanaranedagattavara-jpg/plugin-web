<?php
/**
 * Aqua Theme Functions
 */

if ( ! defined( 'ABSPATH' ) ) exit;

// Soporte para Full Site Editing
add_action( 'after_setup_theme', function() {
    add_theme_support( 'wp-block-styles' );
    add_theme_support( 'align-wide' );
    add_theme_support( 'editor-styles' );
    add_theme_support( 'responsive-embeds' );
    add_theme_support( 'html5', [ 'script', 'style' ] );
    add_theme_support( 'post-thumbnails' );
    add_theme_support( 'title-tag' );
});

// Registrar estilos del editor
add_action( 'enqueue_block_editor_assets', function() {
    wp_enqueue_style( 
        'aqua-theme-editor', 
        get_template_directory_uri() . '/style.css', 
        [], 
        '1.0.0' 
    );
});

// Registrar estilos reutilizables
add_action( 'init', function() {
    // Estilo para tarjetas elevadas
    register_block_style( 'core/group', [
        'name' => 'card-elevated',
        'label' => __( 'Card Elevated', 'aqua' ),
        'style_handle' => 'aqua-theme-styles'
    ]);
    
    // Estilo para botones ghost
    register_block_style( 'core/button', [
        'name' => 'btn-ghost',
        'label' => __( 'Ghost Button', 'aqua' ),
        'style_handle' => 'aqua-theme-styles'
    ]);
    
    // Estilo para columnas con gap extra
    register_block_style( 'core/columns', [
        'name' => 'cols-gap-xl',
        'label' => __( 'Extra Gap', 'aqua' ),
        'style_handle' => 'aqua-theme-styles'
    ]);
});

// Encolar estilos reutilizables
add_action( 'wp_enqueue_scripts', function() {
    wp_enqueue_style( 
        'aqua-theme-styles', 
        get_template_directory_uri() . '/style.css', 
        [], 
        '1.0.0' 
    );
});

// Activar CSS del plugin automáticamente
add_filter( 'aqua_enable_frontend_css', '__return_true' );
