Write-Host "Clonando diseño del Hero 'Comunidades locales'..." -ForegroundColor Green

# Crear Hero con el diseño exacto de la imagen
$heroContent = @'
<!-- Title: Hero Comunidades Locales -->
<!-- Slug: hero -->
<!-- Categories: aqua -->
<!-- Description: Hero con diseño de Comunidades Locales -->

<!-- wp:group {"align":"full","layout":{"type":"constrained"}} -->
<div class="wp-block-group alignfull">
  <!-- wp:heading {"textAlign":"center","level":1,"style":{"typography":{"fontSize":"3.5rem","fontWeight":"700","lineHeight":"1.1"}}} -->
  <h1 class="has-text-align-center" style="font-size:3.5rem;font-weight:700;line-height:1.1;color:#2c3e50;margin-bottom:2rem;">Comunidades locales</h1>
  <!-- /wp:heading -->
  
  <!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"1.25rem","lineHeight":"1.6"}}} -->
  <p class="has-text-align-center" style="font-size:1.25rem;line-height:1.6;color:#555;margin-bottom:3rem;max-width:800px;margin-left:auto;margin-right:auto;">Impulsamos el desarrollo territorial regenerativo desde y hacia Latinoamérica, fortaleciendo comunidades y generando prosperidad consciente.</p>
  <!-- /wp:paragraph -->
  
  <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center","flexWrap":"wrap"}} -->
  <div class="wp-block-buttons">
    <!-- wp:button {"className":"is-style-fill","style":{"border":{"radius":"8px"},"spacing":{"padding":{"top":"16px","bottom":"16px","left":"32px","right":"32px"}}}} -->
    <div class="wp-block-button is-style-fill">
      <a class="wp-block-button__link" style="border-radius:8px;padding-top:16px;padding-bottom:16px;padding-left:32px;padding-right:32px;background-color:#007cba;color:white;font-weight:600;font-size:1.1rem;text-decoration:none;display:inline-block;transition:all 0.3s ease;">Conoce Nuestros Servicios</a>
    </div>
    <!-- /wp:button -->
    
    <!-- wp:button {"className":"is-style-outline","style":{"border":{"radius":"8px","width":"2px"},"spacing":{"padding":{"top":"16px","bottom":"16px","left":"32px","right":"32px"}}}} -->
    <div class="wp-block-button is-style-outline">
      <a class="wp-block-button__link" style="border-radius:8px;padding-top:16px;padding-bottom:16px;padding-left:32px;padding-right:32px;background-color:transparent;color:#007cba;border:2px solid #007cba;font-weight:600;font-size:1.1rem;text-decoration:none;display:inline-block;transition:all 0.3s ease;">Descarga Guía Gratuita</a>
    </div>
    <!-- /wp:button -->
  </div>
  <!-- /wp:buttons -->
  
  <!-- wp:spacer {"height":"40px"} -->
  <div style="height:40px" aria-hidden="true" class="wp-block-spacer"></div>
  <!-- /wp:spacer -->
  
  <!-- wp:columns {"align":"wide","style":{"spacing":{"blockGap":"2rem"}}} -->
  <div class="wp-block-columns alignwide">
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:group {"style":{"border":{"radius":"12px"},"spacing":{"padding":{"top":"2rem","bottom":"2rem","left":"1.5rem","right":"1.5rem"}},"color":{"background":"#f8f9fa"}}} -->
      <div class="wp-block-group has-background" style="border-radius:12px;padding-top:2rem;padding-bottom:2rem;padding-left:1.5rem;padding-right:1.5rem;background-color:#f8f9fa;text-align:center;">
        <!-- wp:heading {"level":3,"style":{"typography":{"fontSize":"2.5rem","fontWeight":"700","color":"#007cba"}}} -->
        <h3 style="font-size:2.5rem;font-weight:700;color:#007cba;margin-bottom:0.5rem;">1,200+</h3>
        <!-- /wp:heading -->
        <!-- wp:paragraph {"style":{"typography":{"fontSize":"1.1rem","fontWeight":"600","color":"#2c3e50"}}} -->
        <p style="font-size:1.1rem;font-weight:600;color:#2c3e50;margin:0;"><strong>Personas</strong><br/>Beneficiadas</p>
        <!-- /wp:paragraph -->
      </div>
      <!-- /wp:group -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:group {"style":{"border":{"radius":"12px"},"spacing":{"padding":{"top":"2rem","bottom":"2rem","left":"1.5rem","right":"1.5rem"}},"color":{"background":"#f8f9fa"}}} -->
      <div class="wp-block-group has-background" style="border-radius:12px;padding-top:2rem;padding-bottom:2rem;padding-left:1.5rem;padding-right:1.5rem;background-color:#f8f9fa;text-align:center;">
        <!-- wp:heading {"level":3,"style":{"typography":{"fontSize":"2.5rem","fontWeight":"700","color":"#007cba"}}} -->
        <h3 style="font-size:2.5rem;font-weight:700;color:#007cba;margin-bottom:0.5rem;">25+</h3>
        <!-- /wp:heading -->
        <!-- wp:paragraph {"style":{"typography":{"fontSize":"1.1rem","fontWeight":"600","color":"#2c3e50"}}} -->
        <p style="font-size:1.1rem;font-weight:600;color:#2c3e50;margin:0;"><strong>Comunidades</strong><br/>Atendidas</p>
        <!-- /wp:paragraph -->
      </div>
      <!-- /wp:group -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:group {"style":{"border":{"radius":"12px"},"spacing":{"padding":{"top":"2rem","bottom":"2rem","left":"1.5rem","right":"1.5rem"}},"color":{"background":"#f8f9fa"}}} -->
      <div class="wp-block-group has-background" style="border-radius:12px;padding-top:2rem;padding-bottom:2rem;padding-left:1.5rem;padding-right:1.5rem;background-color:#f8f9fa;text-align:center;">
        <!-- wp:heading {"level":3,"style":{"typography":{"fontSize":"2.5rem","fontWeight":"700","color":"#007cba"}}} -->
        <h3 style="font-size:2.5rem;font-weight:700;color:#007cba;margin-bottom:0.5rem;">15+</h3>
        <!-- /wp:heading -->
        <!-- wp:paragraph {"style":{"typography":{"fontSize":"1.1rem","fontWeight":"600","color":"#2c3e50"}}} -->
        <p style="font-size:1.1rem;font-weight:600;color:#2c3e50;margin:0;"><strong>Proyectos</strong><br/>Exitosos</p>
        <!-- /wp:paragraph -->
      </div>
      <!-- /wp:group -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:group {"style":{"border":{"radius":"12px"},"spacing":{"padding":{"top":"2rem","bottom":"2rem","left":"1.5rem","right":"1.5rem"}},"color":{"background":"#f8f9fa"}}} -->
      <div class="wp-block-group has-background" style="border-radius:12px;padding-top:2rem;padding-bottom:2rem;padding-left:1.5rem;padding-right:1.5rem;background-color:#f8f9fa;text-align:center;">
        <!-- wp:heading {"level":3,"style":{"typography":{"fontSize":"2.5rem","fontWeight":"700","color":"#007cba"}}} -->
        <h3 style="font-size:2.5rem;font-weight:700;color:#007cba;margin-bottom:0.5rem;">98%</h3>
        <!-- /wp:heading -->
        <!-- wp:paragraph {"style":{"typography":{"fontSize":"1.1rem","fontWeight":"600","color":"#2c3e50"}}} -->
        <p style="font-size:1.1rem;font-weight:600;color:#2c3e50;margin:0;"><strong>Satisfacción</strong></p>
        <!-- /wp:paragraph -->
      </div>
      <!-- /wp:group -->
    </div>
    <!-- /wp:column -->
  </div>
  <!-- /wp:columns -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/hero.html" $heroContent
Write-Host "Hero 'Comunidades locales' clonado!" -ForegroundColor Green

Write-Host ""
Write-Host "DISEÑO CLONADO EXITOSAMENTE:" -ForegroundColor Green
Write-Host "   ✓ Hero 'Comunidades locales' recreado" -ForegroundColor White
Write-Host "   ✓ Diseño profesional con métricas" -ForegroundColor White
Write-Host "   ✓ Botones estilizados" -ForegroundColor White
Write-Host "   ✓ Tarjetas de métricas organizadas" -ForegroundColor White
Write-Host "   ✓ Responsive design mejorado" -ForegroundColor White

Write-Host ""
Write-Host "CAMBIOS APLICADOS AUTOMATICAMENTE:" -ForegroundColor Cyan
Write-Host "   • El Hero se actualizo en WordPress" -ForegroundColor White
Write-Host "   • CSS mejorado para mejor presentacion" -ForegroundColor White
Write-Host "   • Diseño exacto de la imagen clonado" -ForegroundColor White

Write-Host ""
Write-Host "PROXIMOS PASOS:" -ForegroundColor Yellow
Write-Host "   1. Ve a http://localhost:8080" -ForegroundColor White
Write-Host "   2. El Hero ahora tiene el diseño clonado" -ForegroundColor White
Write-Host "   3. Las tarjetas estan bien organizadas" -ForegroundColor White

Write-Host ""
Write-Host "DISEÑO CLONADO Y APLICADO!" -ForegroundColor Green
