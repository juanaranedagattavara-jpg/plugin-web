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

# Actualizar CSS para el nuevo diseño
$cssUpdate = @'
/* AQUA PATTERNS - CSS PROFESIONAL COMPLETO */

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

/* Titulos */
.wp-block-heading {
  margin: 0 0 1rem 0;
  line-height: 1.2;
  font-weight: 700;
  color: #333;
}

.wp-block-heading h1 {
  font-size: 3.5rem;
  margin-bottom: 2rem;
  color: #2c3e50;
  font-weight: 700;
  line-height: 1.1;
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

/* Parrafos */
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
  padding: 16px 32px;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  font-size: 1.1rem;
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

/* Imagenes */
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

/* Navegacion */
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

Set-Content "aqua-patterns/assets/frontend.css" $cssUpdate
Write-Host "CSS actualizado para el nuevo diseño!" -ForegroundColor Green

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
Write-Host "¡DISEÑO CLONADO Y APLICADO!" -ForegroundColor Green
