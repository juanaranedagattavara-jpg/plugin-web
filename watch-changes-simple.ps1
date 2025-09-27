Write-Host "Monitoreando cambios en Aqua Patterns..." -ForegroundColor Green

# Verificar si WordPress esta corriendo
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080" -TimeoutSec 5
    Write-Host "WordPress detectado en http://localhost:8080" -ForegroundColor Green
} catch {
    Write-Host "WordPress no esta corriendo. Ejecuta primero: .\start-wp-simple.ps1" -ForegroundColor Yellow
    exit 1
}

Write-Host "`nMonitoreando cambios en tiempo real..." -ForegroundColor Green
Write-Host "Directorio: aqua-patterns/" -ForegroundColor White
Write-Host "Archivos: *.html" -ForegroundColor White
Write-Host "WordPress: http://localhost:8080" -ForegroundColor White
Write-Host "`nEdita cualquier archivo .html en aqua-patterns/patterns/" -ForegroundColor Yellow
Write-Host "Los cambios se reflejaran automaticamente en WordPress" -ForegroundColor Yellow
Write-Host "`nPresiona Ctrl+C para detener el monitoreo" -ForegroundColor Red

# Configurar FileSystemWatcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "aqua-patterns"
$watcher.Filter = "*.html"
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

# Registrar evento de cambio
Register-ObjectEvent -InputObject $watcher -EventName "Changed" -Action {
    $file = $Event.SourceEventArgs.FullPath
    $fileName = Split-Path $file -Leaf
    Write-Host "`nCambio detectado: $fileName" -ForegroundColor Cyan
    Write-Host "Ve el cambio en: http://localhost:8080" -ForegroundColor White
    Write-Host "Hora: $(Get-Date -Format 'HH:mm:ss')" -ForegroundColor Gray
}

try {
    while ($true) {
        Start-Sleep -Seconds 1
    }
} finally {
    $watcher.EnableRaisingEvents = $false
    $watcher.Dispose()
    Write-Host "`nMonitoreo detenido" -ForegroundColor Yellow
}
