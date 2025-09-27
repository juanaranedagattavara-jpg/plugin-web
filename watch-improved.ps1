Write-Host "Monitoreando cambios en Aqua Patterns..." -ForegroundColor Green

# Verificar si WordPress esta corriendo
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080" -TimeoutSec 5
    Write-Host "WordPress detectado en http://localhost:8080" -ForegroundColor Green
} catch {
    Write-Host "WordPress no esta corriendo. Ejecuta: docker-compose up -d" -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "MEJORAS APLICADAS AL PLUGIN:" -ForegroundColor Cyan
Write-Host "   ✓ CSS del frontend activado automaticamente" -ForegroundColor Green
Write-Host "   ✓ Soporte para bloques agregado" -ForegroundColor Green
Write-Host "   ✓ CSS profesional completo incluido" -ForegroundColor Green
Write-Host "   ✓ Patrones simplificados para compatibilidad" -ForegroundColor Green
Write-Host "   ✓ Responsive design mejorado" -ForegroundColor Green

Write-Host ""
Write-Host "Monitoreando cambios en tiempo real..." -ForegroundColor Green
Write-Host "Directorio: aqua-patterns/" -ForegroundColor White
Write-Host "Archivos: *.html, *.css, *.php" -ForegroundColor White
Write-Host "WordPress: http://localhost:8080" -ForegroundColor White
Write-Host ""
Write-Host "Edita cualquier archivo en aqua-patterns/" -ForegroundColor Yellow
Write-Host "Los cambios se reflejaran automaticamente en WordPress" -ForegroundColor Yellow
Write-Host ""
Write-Host "Presiona Ctrl+C para detener el monitoreo" -ForegroundColor Red

# Configurar FileSystemWatcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "aqua-patterns"
$watcher.Filter = "*.*"
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

# Registrar evento de cambio
Register-ObjectEvent -InputObject $watcher -EventName "Changed" -Action {
    $file = $Event.SourceEventArgs.FullPath
    $fileName = Split-Path $file -Leaf
    $fileExt = [System.IO.Path]::GetExtension($file)
    
    Write-Host ""
    Write-Host "Cambio detectado: $fileName" -ForegroundColor Cyan
    
    if ($fileExt -eq ".html") {
        Write-Host "   Tipo: Patron Gutenberg" -ForegroundColor White
    } elseif ($fileExt -eq ".css") {
        Write-Host "   Tipo: Estilos CSS" -ForegroundColor White
    } elseif ($fileExt -eq ".php") {
        Write-Host "   Tipo: Codigo PHP" -ForegroundColor White
    }
    
    Write-Host "   Ve el cambio en: http://localhost:8080" -ForegroundColor White
    Write-Host "   Hora: $(Get-Date -Format 'HH:mm:ss')" -ForegroundColor Gray
}

try {
    while ($true) {
        Start-Sleep -Seconds 1
    }
} finally {
    $watcher.EnableRaisingEvents = $false
    $watcher.Dispose()
    Write-Host ""
    Write-Host "Monitoreo detenido" -ForegroundColor Yellow
}
