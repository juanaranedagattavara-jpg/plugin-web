<?php
class Aqua_Admin_Notices {
  public static function add_notice($id,$message,$type='info'){
    add_action('admin_notices', function() use($id,$message,$type){
      if (get_transient($id)) return;
      printf('<div class="notice notice-%1$s"><p>%2$s</p></div>', esc_attr($type), wp_kses_post($message));
      set_transient($id, 1, 3600);
    });
  }
}
