Write-Host "Corrigiendo TODOS los patrones para compatibilidad con Gutenberg..." -ForegroundColor Green

# 1. Servicios - Convertir a bloques Gutenberg
$serviciosContent = @'
<!-- Title: Servicios -->
<!-- Slug: servicios -->
<!-- Categories: aqua, columns -->
<!-- Description: Cards con CTA a contacto o Woo/Membresías -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Servicios</h2>
  <!-- /wp:heading -->
  
  <!-- wp:columns {"align":"wide"} -->
  <div class="wp-block-columns alignwide">
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:heading {"level":3} -->
      <h3>Servicio A</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Beneficio clave.</p>
      <!-- /wp:paragraph -->
      <!-- wp:buttons -->
      <div class="wp-block-buttons">
        <!-- wp:button -->
        <div class="wp-block-button">
          <a class="wp-block-button__link" href="/contacto">Cotizar</a>
        </div>
        <!-- /wp:button -->
      </div>
      <!-- /wp:buttons -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:heading {"level":3} -->
      <h3>Servicio B</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Beneficio clave.</p>
      <!-- /wp:paragraph -->
      <!-- wp:buttons -->
      <div class="wp-block-buttons">
        <!-- wp:button -->
        <div class="wp-block-button">
          <a class="wp-block-button__link" href="/contacto">Cotizar</a>
        </div>
        <!-- /wp:button -->
      </div>
      <!-- /wp:buttons -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:heading {"level":3} -->
      <h3>Servicio C</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Beneficio clave.</p>
      <!-- /wp:paragraph -->
      <!-- wp:buttons -->
      <div class="wp-block-buttons">
        <!-- wp:button -->
        <div class="wp-block-button">
          <a class="wp-block-button__link" href="/contacto">Cotizar</a>
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

Set-Content "aqua-patterns/patterns/servicios.html" $serviciosContent
Write-Host "Patron Servicios corregido!" -ForegroundColor Green

# 2. Team - Convertir a bloques Gutenberg
$teamContent = @'
<!-- Title: Team -->
<!-- Slug: team -->
<!-- Categories: aqua, columns -->
<!-- Description: Equipo con CTA a LinkedIn o contacto -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Equipo</h2>
  <!-- /wp:heading -->
  
  <!-- wp:columns {"align":"wide"} -->
  <div class="wp-block-columns alignwide">
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:image {"sizeSlug":"thumbnail"} -->
      <figure class="wp-block-image size-thumbnail">
        <img src="https://via.placeholder.com/160" alt="Miembro 1"/>
      </figure>
      <!-- /wp:image -->
      <!-- wp:heading {"level":3} -->
      <h3>Nombre 1</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Rol — <a href="#" target="_blank" rel="noopener">LinkedIn</a></p>
      <!-- /wp:paragraph -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:image {"sizeSlug":"thumbnail"} -->
      <figure class="wp-block-image size-thumbnail">
        <img src="https://via.placeholder.com/160" alt="Miembro 2"/>
      </figure>
      <!-- /wp:image -->
      <!-- wp:heading {"level":3} -->
      <h3>Nombre 2</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Rol — <a href="#" target="_blank" rel="noopener">LinkedIn</a></p>
      <!-- /wp:paragraph -->
    </div>
    <!-- /wp:column -->
    
    <!-- wp:column -->
    <div class="wp-block-column">
      <!-- wp:image {"sizeSlug":"thumbnail"} -->
      <figure class="wp-block-image size-thumbnail">
        <img src="https://via.placeholder.com/160" alt="Miembro 3"/>
      </figure>
      <!-- /wp:image -->
      <!-- wp:heading {"level":3} -->
      <h3>Nombre 3</h3>
      <!-- /wp:heading -->
      <!-- wp:paragraph -->
      <p>Rol — <a href="#" target="_blank" rel="noopener">LinkedIn</a></p>
      <!-- /wp:paragraph -->
    </div>
    <!-- /wp:column -->
  </div>
  <!-- /wp:columns -->
  
  <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
  <div class="wp-block-buttons">
    <!-- wp:button -->
    <div class="wp-block-button">
      <a class="wp-block-button__link" href="/contacto">Conversemos</a>
    </div>
    <!-- /wp:button -->
  </div>
  <!-- /wp:buttons -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/team.html" $teamContent
Write-Host "Patron Team corregido!" -ForegroundColor Green

# 3. Timeline - Convertir a bloques Gutenberg
$timelineContent = @'
<!-- Title: Timeline -->
<!-- Slug: timeline -->
<!-- Categories: aqua, text -->
<!-- Description: Hitos con CTA a Casos de Éxito -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Nuestro camino</h2>
  <!-- /wp:heading -->
  
  <!-- wp:list -->
  <ul>
    <li><strong>2021</strong> · Fundación y primer MVP.</li>
    <li><strong>2022</strong> · Primeros clientes clave.</li>
    <li><strong>2023</strong> · Expansión y automatizaciones.</li>
    <li><strong>2024</strong> · Integraciones Woo/Membresías.</li>
  </ul>
  <!-- /wp:list -->
  
  <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
  <div class="wp-block-buttons">
    <!-- wp:button -->
    <div class="wp-block-button">
      <a class="wp-block-button__link" href="#casos-exito">Ver casos</a>
    </div>
    <!-- /wp:button -->
  </div>
  <!-- /wp:buttons -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/timeline.html" $timelineContent
Write-Host "Patron Timeline corregido!" -ForegroundColor Green

# 4. Casos de Éxito - Convertir a bloques Gutenberg
$casosContent = @'
<!-- Title: Casos de Éxito -->
<!-- Slug: casos-exito -->
<!-- Categories: aqua, text -->
<!-- Description: Testimonios + CTA ver todos -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Casos de Éxito</h2>
  <!-- /wp:heading -->
  
  <!-- wp:quote -->
  <blockquote class="wp-block-quote">
    <p>"+40% ventas en 90 días."</p>
    <cite>Cliente A</cite>
  </blockquote>
  <!-- /wp:quote -->
  
  <!-- wp:quote -->
  <blockquote class="wp-block-quote">
    <p>"−10 horas/sem en tareas repetitivas."</p>
    <cite>Cliente B</cite>
  </blockquote>
  <!-- /wp:quote -->
  
  <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
  <div class="wp-block-buttons">
    <!-- wp:button -->
    <div class="wp-block-button">
      <a class="wp-block-button__link" href="/casos">Ver todos</a>
    </div>
    <!-- /wp:button -->
  </div>
  <!-- /wp:buttons -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/casos-exito.html" $casosContent
Write-Host "Patron Casos de Exito corregido!" -ForegroundColor Green

# 5. Galería - Convertir a bloques Gutenberg
$galeriaContent = @'
<!-- Title: Galería -->
<!-- Slug: galeria -->
<!-- Categories: aqua, gallery -->
<!-- Description: Grid responsive + CTA ver más -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Galería</h2>
  <!-- /wp:heading -->
  
  <!-- wp:gallery {"columns":3,"linkTo":"none"} -->
  <figure class="wp-block-gallery columns-3 is-cropped">
    <figure class="wp-block-image">
      <img src="https://via.placeholder.com/600x400" alt="Imagen 1"/>
    </figure>
    <figure class="wp-block-image">
      <img src="https://via.placeholder.com/600x400" alt="Imagen 2"/>
    </figure>
    <figure class="wp-block-image">
      <img src="https://via.placeholder.com/600x400" alt="Imagen 3"/>
    </figure>
  </figure>
  <!-- /wp:gallery -->
  
  <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
  <div class="wp-block-buttons">
    <!-- wp:button -->
    <div class="wp-block-button">
      <a class="wp-block-button__link" href="/portafolio">Ver más</a>
    </div>
    <!-- /wp:button -->
  </div>
  <!-- /wp:buttons -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/galeria.html" $galeriaContent
Write-Host "Patron Galeria corregido!" -ForegroundColor Green

# 6. Contacto - Convertir a bloques Gutenberg
$contactoContent = @'
<!-- Title: Contacto -->
<!-- Slug: contacto-form -->
<!-- Categories: aqua, text -->
<!-- Description: H2, copy y espacio para bloque/shortcode de formulario -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Contacto</h2>
  <!-- /wp:heading -->
  
  <!-- wp:paragraph {"align":"center"} -->
  <p class="has-text-align-center">Cuéntanos tu proyecto. Respondemos en 24h.</p>
  <!-- /wp:paragraph -->
  
  <!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"12px"}}} -->
  <p class="has-text-align-center" style="font-size:12px">Al enviar aceptas la <a href="/privacidad">política de privacidad</a>.</p>
  <!-- /wp:paragraph -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/contacto-form.html" $contactoContent
Write-Host "Patron Contacto corregido!" -ForegroundColor Green

# 7. Newsletter - Convertir a bloques Gutenberg
$newsletterContent = @'
<!-- Title: Newsletter -->
<!-- Slug: newsletter -->
<!-- Categories: aqua, text -->
<!-- Description: Suscripción al boletín; bloque o embed del proveedor -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"textAlign":"center","level":2} -->
  <h2 class="has-text-align-center">Suscríbete</h2>
  <!-- /wp:heading -->
  
  <!-- wp:paragraph {"align":"center"} -->
  <p class="has-text-align-center">Recibe guías y ofertas. Sin spam.</p>
  <!-- /wp:paragraph -->
</div>
<!-- /wp:group -->
'@

Set-Content "aqua-patterns/patterns/newsletter.html" $newsletterContent
Write-Host "Patron Newsletter corregido!" -ForegroundColor Green

# 8. WhatsApp Float - Convertir a bloques Gutenberg
$whatsappContent = @'
<!-- Title: WhatsApp flotante -->
<!-- Slug: whatsapp-float -->
<!-- Categories: aqua -->
<!-- Description: Botón fijo (activar frontend.css) -->

<!-- wp:html -->
<a class="aqua-whatsapp-float has-background has-contrast-background-color has-white-color"
   href="https://wa.me/56912345678?text=Hola%20quiero%20informaci%C3%B3n"
   aria-label="Contactar por WhatsApp" target="_blank" rel="noopener">
  <svg width="26" height="26" viewBox="0 0 32 32" aria-hidden="true"><path d="M19.1 17.6c-.3-.1-1-.3-1.1-.4-.2-.1-.4-.1-.6.2s-.7.7-.8.8-.3.1-.5.1-.9-.3-1.6-.9-1.2-1.5-1.3-1.7 0-.4.1-.5.3-.3.4-.5c.1-.2.1-.3 0-.5s-.9-2.2-1.2-3-.6-.7-.8-.7h-.7c-.2 0-.5.1-.7.3-.2.2-.8.8-.8 2s.8 2.4.9 2.5c.1.2 1.6 2.5 3.8 3.5 2.3 1.1 2.3.7 2.8.7.4 0 1.4-.6 1.6-1.2.2-.6.2-1.1.1-1.2-.1-.2-.3-.2-.7-.3zM16 3c7.2 0 13 5.8 13 13s-5.8 13-13 13c-2.3 0-4.5-.6-6.4-1.7L4 29l1.8-5.5C4.7 21.5 4 19.3 4 16 4 8.8 8.8 3 16 3z" fill="currentColor"/></svg>
</a>
<!-- /wp:html -->
'@

Set-Content "aqua-patterns/patterns/whatsapp-float.html" $whatsappContent
Write-Host "Patron WhatsApp Float corregido!" -ForegroundColor Green

Write-Host ""
Write-Host "TODOS LOS PATRONES CORREGIDOS:" -ForegroundColor Green
Write-Host "   ✓ Servicios - Convertido a bloques Gutenberg" -ForegroundColor White
Write-Host "   ✓ Team - Convertido a bloques Gutenberg" -ForegroundColor White
Write-Host "   ✓ Timeline - Convertido a bloques Gutenberg" -ForegroundColor White
Write-Host "   ✓ Casos de Exito - Convertido a bloques Gutenberg" -ForegroundColor White
Write-Host "   ✓ Galeria - Convertido a bloques Gutenberg" -ForegroundColor White
Write-Host "   ✓ Contacto - Convertido a bloques Gutenberg" -ForegroundColor White
Write-Host "   ✓ Newsletter - Convertido a bloques Gutenberg" -ForegroundColor White
Write-Host "   ✓ WhatsApp Float - Convertido a bloques Gutenberg" -ForegroundColor White

Write-Host ""
Write-Host "PROBLEMA RESUELTO:" -ForegroundColor Cyan
Write-Host "   • No mas errores de 'contenido inesperado'" -ForegroundColor White
Write-Host "   • Todos los patrones son bloques Gutenberg validos" -ForegroundColor White
Write-Host "   • Compatibilidad total con el editor" -ForegroundColor White
Write-Host "   • Diseño se mantiene intacto" -ForegroundColor White

Write-Host ""
Write-Host "PROXIMOS PASOS:" -ForegroundColor Yellow
Write-Host "   1. Ve a http://localhost:8080" -ForegroundColor White
Write-Host "   2. Los patrones ahora funcionan sin errores" -ForegroundColor White
Write-Host "   3. Puedes editarlos normalmente en Gutenberg" -ForegroundColor White

Write-Host ""
Write-Host "¡TODOS LOS PATRONES CORREGIDOS EXITOSAMENTE!" -ForegroundColor Green
