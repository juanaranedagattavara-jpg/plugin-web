Write-Host "Mejorando diseño de patrones para que se vean profesionales..." -ForegroundColor Green

# Crear CSS avanzado con diseño profesional
$advancedCSS = @'
/* ===== AQUA PATTERNS - DISEÑO PROFESIONAL AVANZADO ===== */

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
  padding: 3rem 0;
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

/* Columnas con diseño mejorado */
.wp-block-columns {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 0;
  padding: 0;
}

.wp-block-column {
  margin: 0;
  padding: 0;
  min-width: 0;
}

/* Títulos mejorados */
.wp-block-heading {
  margin: 0 0 1.5rem 0;
  line-height: 1.2;
  font-weight: 700;
  color: #2c3e50;
}

.wp-block-heading h1 {
  font-size: 3.5rem;
  margin-bottom: 2rem;
  color: #2c3e50;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.wp-block-heading h2 {
  font-size: 2.8rem;
  margin-bottom: 1.5rem;
  color: #34495e;
  position: relative;
}

.wp-block-heading h2::after {
  content: '';
  position: absolute;
  bottom: -10px;
  left: 50%;
  transform: translateX(-50%);
  width: 60px;
  height: 4px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 2px;
}

.wp-block-heading h3 {
  font-size: 1.8rem;
  margin-bottom: 1rem;
  color: #34495e;
  font-weight: 600;
}

.wp-block-heading h4 {
  font-size: 1.4rem;
  margin-bottom: 0.75rem;
  color: #34495e;
}

/* Párrafos mejorados */
.wp-block-paragraph {
  margin: 0 0 1.5rem 0;
  line-height: 1.7;
  font-size: 1.1rem;
  color: #555;
}

/* TARJETAS PROFESIONALES */
.wp-block-column {
  background: #ffffff;
  border-radius: 12px;
  padding: 2rem;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
  border: 1px solid #e8ecf0;
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.wp-block-column::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.wp-block-column:hover {
  transform: translateY(-8px);
  box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
}

/* Botones mejorados */
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
  padding: 14px 28px;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  font-size: 1rem;
  transition: all 0.3s ease;
  border: 2px solid transparent;
  cursor: pointer;
  text-align: center;
  position: relative;
  overflow: hidden;
}

.wp-block-button__link::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
  transition: left 0.5s;
}

.wp-block-button__link:hover::before {
  left: 100%;
}

/* Estilos de botones */
.wp-block-button.is-style-fill .wp-block-button__link {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border-color: transparent;
}

.wp-block-button.is-style-fill .wp-block-button__link:hover {
  background: linear-gradient(135deg, #5a6fd8 0%, #6a4190 100%);
  transform: translateY(-2px);
  box-shadow: 0 8px 25px rgba(102, 126, 234, 0.4);
}

.wp-block-button.is-style-outline .wp-block-button__link {
  background: transparent;
  color: #667eea;
  border-color: #667eea;
}

.wp-block-button.is-style-outline .wp-block-button__link:hover {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  transform: translateY(-2px);
  box-shadow: 0 8px 25px rgba(102, 126, 234, 0.3);
}

/* Imágenes mejoradas */
.wp-block-image {
  margin: 0 0 1.5rem 0;
  padding: 0;
  border-radius: 12px;
  overflow: hidden;
}

.wp-block-image img {
  max-width: 100%;
  height: auto;
  border-radius: 12px;
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.wp-block-image img:hover {
  transform: scale(1.05);
}

/* Listas mejoradas */
.wp-block-list {
  margin: 0 0 1.5rem 0;
  padding: 0;
}

.wp-block-list li {
  margin-bottom: 0.75rem;
  line-height: 1.6;
  color: #555;
  position: relative;
  padding-left: 1.5rem;
}

.wp-block-list li::before {
  content: '✓';
  position: absolute;
  left: 0;
  color: #667eea;
  font-weight: bold;
}

/* Navegación mejorada */
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
  position: relative;
}

.wp-block-navigation a::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 0;
  height: 2px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  transition: width 0.3s ease;
}

.wp-block-navigation a:hover::after {
  width: 100%;
}

.wp-block-navigation a:hover {
  color: #667eea;
}

/* Cover mejorado */
.wp-block-cover {
  position: relative;
  min-height: 500px;
  display: flex;
  align-items: center;
  justify-content: center;
  background-size: cover;
  background-position: center;
  margin: 0;
  padding: 0;
  border-radius: 12px;
  overflow: hidden;
}

.wp-block-cover__inner-container {
  position: relative;
  z-index: 2;
  text-align: center;
  color: white;
  max-width: 800px;
  padding: 3rem;
}

.wp-block-cover__background {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: linear-gradient(135deg, rgba(102, 126, 234, 0.8) 0%, rgba(118, 75, 162, 0.8) 100%);
}

/* Spacer */
.wp-block-spacer {
  margin: 0;
  padding: 0;
}

/* Social Links mejorados */
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
  width: 45px;
  height: 45px;
  border-radius: 50%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  text-decoration: none;
  transition: all 0.3s ease;
}

.wp-block-social-links a:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(102, 126, 234, 0.4);
}

/* WhatsApp Float mejorado */
.aqua-whatsapp-float {
  position: fixed;
  right: 20px;
  bottom: 20px;
  z-index: 9999;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background: linear-gradient(135deg, #25d366 0%, #20c55a 100%);
  color: white;
  text-decoration: none;
  box-shadow: 0 8px 25px rgba(37, 211, 102, 0.4);
  transition: all 0.3s ease;
}

.aqua-whatsapp-float:hover {
  transform: translateY(-3px);
  box-shadow: 0 12px 35px rgba(37, 211, 102, 0.5);
}

/* Quotes mejorados */
.wp-block-quote {
  background: #f8f9fa;
  border-left: 4px solid #667eea;
  padding: 2rem;
  margin: 2rem 0;
  border-radius: 0 8px 8px 0;
  font-style: italic;
  position: relative;
}

.wp-block-quote::before {
  content: '"';
  position: absolute;
  top: -10px;
  left: 20px;
  font-size: 4rem;
  color: #667eea;
  opacity: 0.3;
}

.wp-block-quote cite {
  display: block;
  margin-top: 1rem;
  font-weight: 600;
  color: #667eea;
  font-style: normal;
}

/* Galería mejorada */
.wp-block-gallery {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.wp-block-gallery .wp-block-image {
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.wp-block-gallery .wp-block-image:hover {
  transform: scale(1.05);
}

/* Responsive mejorado */
@media (max-width: 768px) {
  .wp-block-columns {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
  
  .wp-block-column {
    padding: 1.5rem;
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
    right: 15px;
    bottom: 15px;
    width: 50px;
    height: 50px;
  }
  
  .wp-block-group {
    padding: 2rem 0;
  }
}

@media (max-width: 480px) {
  .wp-block-group {
    padding: 1.5rem 0;
  }
  
  .wp-block-group.alignfull {
    padding-left: 0.5rem;
    padding-right: 0.5rem;
  }
  
  .wp-block-column {
    padding: 1rem;
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

Set-Content "aqua-patterns/assets/frontend.css" $advancedCSS
Write-Host "CSS profesional avanzado aplicado!" -ForegroundColor Green

# Mejorar patrones específicos con mejor organización
Write-Host "Mejorando organización de patrones..." -ForegroundColor Yellow

# Servicios con mejor layout
$serviciosMejorado = @'
<!-- Title: Servicios Profesionales -->
<!-- Slug: servicios -->
<!-- Categories: aqua, columns -->
<!-- Description: Cards profesionales con diseño mejorado -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Nuestros Servicios</h2>
  <!-- /wp:heading -->
  
  <!-- wp:paragraph {"align":"center"} -->
  <p class="has-text-align-center">Soluciones integrales para tu negocio</p>
  <!-- /wp:paragraph -->
  
  <!-- wp:columns {"align":"wide"} -->
  <div class="wp-block-columns alignwide">
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:heading {"level":3} -->
      <h3>Consultoría Estratégica</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Análisis profundo de tu mercado y competencia para definir estrategias ganadoras.</p>
      <!-- /wp:paragraph -->
      <!-- wp:list -->
      <ul>
        <li>Análisis de mercado</li>
        <li>Estrategia de posicionamiento</li>
        <li>Plan de crecimiento</li>
      </ul>
      <!-- /wp:list -->
      <!-- wp:buttons -->
      <div class="wp-block-buttons">
        <!-- wp:button {"className":"is-style-fill"} -->
        <div class="wp-block-button is-style-fill">
          <a class="wp-block-button__link" href="/contacto">Cotizar Ahora</a>
        </div>
        <!-- /wp:button -->
      </div>
      <!-- /wp:buttons -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:heading {"level":3} -->
      <h3>Desarrollo Web</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Sitios web modernos, rápidos y optimizados para conversiones.</p>
      <!-- /wp:paragraph -->
      <!-- wp:list -->
      <ul>
        <li>Diseño responsive</li>
        <li>Optimización SEO</li>
        <li>Integración de pagos</li>
      </ul>
      <!-- /wp:list -->
      <!-- wp:buttons -->
      <div class="wp-block-buttons">
        <!-- wp:button {"className":"is-style-fill"} -->
        <div class="wp-block-button is-style-fill">
          <a class="wp-block-button__link" href="/contacto">Cotizar Ahora</a>
        </div>
        <!-- /wp:button -->
      </div>
      <!-- /wp:buttons -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:heading {"level":3} -->
      <h3>Marketing Digital</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Campañas efectivas que generan resultados medibles.</p>
      <!-- /wp:paragraph -->
      <!-- wp:list -->
      <ul>
        <li>Google Ads</li>
        <li>Redes sociales</li>
        <li>Email marketing</li>
      </ul>
      <!-- /wp:list -->
      <!-- wp:buttons -->
      <div class="wp-block-buttons">
        <!-- wp:button {"className":"is-style-fill"} -->
        <div class="wp-block-button is-style-fill">
          <a class="wp-block-button__link" href="/contacto">Cotizar Ahora</a>
        </div>
        <!-- /wp:button -->
      </div>
      <!-- /wp:buttons -->
    </div>
    <!-- /wp:column -->
  </div>
  <!-- /wp:columns -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/servicios.html" $serviciosMejorado
Write-Host "Patron Servicios mejorado!" -ForegroundColor Green

# Team con mejor diseño
$teamMejorado = @'
<!-- Title: Equipo Profesional -->
<!-- Slug: team -->
<!-- Categories: aqua, columns -->
<!-- Description: Equipo con diseño profesional mejorado -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Nuestro Equipo</h2>
  <!-- /wp:heading -->
  
  <!-- wp:paragraph {"align":"center"} -->
  <p class="has-text-align-center">Profesionales apasionados por la excelencia</p>
  <!-- /wp:paragraph -->
  
  <!-- wp:columns {"align":"wide"} -->
  <div class="wp-block-columns alignwide">
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:image {"sizeSlug":"thumbnail"} -->
      <figure class="wp-block-image size-thumbnail">
        <img src="https://via.placeholder.com/200x200" alt="María González"/>
      </figure>
      <!-- /wp:image -->
      <!-- wp:heading {"level":3} -->
      <h3>María González</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p><strong>CEO & Fundadora</strong></p>
      <!-- /wp:paragraph -->
      <!-- wp:paragraph -->
      <p>15 años de experiencia en estrategia empresarial y liderazgo de equipos.</p>
      <!-- /wp:paragraph -->
      <!-- wp:paragraph -->
      <p><a href="#" target="_blank" rel="noopener">LinkedIn</a></p>
      <!-- /wp:paragraph -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:image {"sizeSlug":"thumbnail"} -->
      <figure class="wp-block-image size-thumbnail">
        <img src="https://via.placeholder.com/200x200" alt="Carlos Ruiz"/>
      </figure>
      <!-- /wp:image -->
      <!-- wp:heading {"level":3} -->
      <h3>Carlos Ruiz</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p><strong>CTO</strong></p>
      <!-- /wp:paragraph -->
      <!-- wp:paragraph -->
      <p>Especialista en desarrollo web y arquitectura de software.</p>
      <!-- /wp:paragraph -->
      <!-- wp:paragraph -->
      <p><a href="#" target="_blank" rel="noopener">LinkedIn</a></p>
      <!-- /wp:paragraph -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:image {"sizeSlug":"thumbnail"} -->
      <figure class="wp-block-image size-thumbnail">
        <img src="https://via.placeholder.com/200x200" alt="Ana Martínez"/>
      </figure>
      <!-- /wp:image -->
      <!-- wp:heading {"level":3} -->
      <h3>Ana Martínez</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p><strong>Directora de Marketing</strong></p>
      <!-- /wp:paragraph -->
      <!-- wp:paragraph -->
      <p>Experta en marketing digital y crecimiento de marcas.</p>
      <!-- /wp:paragraph -->
      <!-- wp:paragraph -->
      <p><a href="#" target="_blank" rel="noopener">LinkedIn</a></p>
      <!-- /wp:paragraph -->
    </div>
    <!-- /wp:column -->
  </div>
  <!-- /wp:columns -->
  
  <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
  <div class="wp-block-buttons">
    <!-- wp:button {"className":"is-style-outline"} -->
    <div class="wp-block-button is-style-outline">
      <a class="wp-block-button__link" href="/contacto">Conoce Más</a>
    </div>
    <!-- /wp:button -->
  </div>
  <!-- /wp:buttons -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/team.html" $teamMejorado
Write-Host "Patron Team mejorado!" -ForegroundColor Green

Write-Host ""
Write-Host "DISEÑO PROFESIONAL APLICADO:" -ForegroundColor Green
Write-Host "   ✓ Tarjetas con sombras y efectos hover" -ForegroundColor White
Write-Host "   ✓ Gradientes y colores modernos" -ForegroundColor White
Write-Host "   ✓ Layout en grid responsive" -ForegroundColor White
Write-Host "   ✓ Botones con animaciones" -ForegroundColor White
Write-Host "   ✓ Tipografías mejoradas" -ForegroundColor White
Write-Host "   ✓ Espaciado profesional" -ForegroundColor White
Write-Host "   ✓ Efectos visuales atractivos" -ForegroundColor White

Write-Host ""
Write-Host "MEJORAS EN ORGANIZACIÓN:" -ForegroundColor Cyan
Write-Host "   ✓ Servicios con listas de beneficios" -ForegroundColor White
Write-Host "   ✓ Team con descripciones detalladas" -ForegroundColor White
Write-Host "   ✓ Layout en grid para mejor orden" -ForegroundColor White
Write-Host "   ✓ Contenido más descriptivo" -ForegroundColor White

Write-Host ""
Write-Host "PROXIMOS PASOS:" -ForegroundColor Yellow
Write-Host "   1. Ve a http://localhost:8080" -ForegroundColor White
Write-Host "   2. Los patrones ahora tienen diseño profesional" -ForegroundColor White
Write-Host "   3. Las tarjetas están bien organizadas" -ForegroundColor White
Write-Host "   4. Puedes personalizar colores y contenido" -ForegroundColor White

Write-Host ""
Write-Host "¡DISEÑO PROFESIONAL APLICADO EXITOSAMENTE!" -ForegroundColor Green
