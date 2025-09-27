<?php
class Aqua_Requirements {
  const MIN_WP = '6.6';
  public static function on_activation(){
    global $wp_version;
    if ( version_compare($wp_version, self::MIN_WP, '<') ) {
      deactivate_plugins(plugin_basename(__FILE__));
      wp_die(sprintf(esc_html__('Aqua Patterns requiere WordPress %s o superior.','aqua'), self::MIN_WP));
    }
  }
  public static function runtime_checks(){
    if (function_exists('wp_is_block_theme') && !wp_is_block_theme()) {
      Aqua_Admin_Notices::add_notice(
        'aqua_block_theme_notice',
        __('Sugerencia: activa un Block Theme para aprovechar tokens y edición completa. Los patrones funcionarán igualmente.','aqua'),
        'warning'
      );
    }
  }
}
