# Script para instalar Aqua Patterns en WordPress local
# Ejecutar desde PowerShell: .\install-plugin.ps1

Write-Host "🚀 Instalando Aqua Patterns en WordPress local..." -ForegroundColor Green

# Verificar que estamos en el directorio correcto
if (-not (Test-Path "aqua-patterns\aqua-patterns.php")) {
    Write-Host "❌ Error: No se encontró el plugin. Ejecuta desde el directorio del proyecto." -ForegroundColor Red
    exit 1
}

# Crear directorio de destino (ajustar ruta según tu instalación local)
$wpPluginsDir = "C:\xampp\htdocs\wordpress\wp-content\plugins\aqua-patterns"
$wpPluginsDirAlt = "C:\wamp64\www\wordpress\wp-content\plugins\aqua-patterns"

# Detectar instalación de WordPress
$wpDir = $null
if (Test-Path $wpPluginsDir) {
    $wpDir = $wpPluginsDir
    Write-Host "✅ Detectado XAMPP en: $wpDir" -ForegroundColor Yellow
} elseif (Test-Path $wpPluginsDirAlt) {
    $wpDir = $wpPluginsDirAlt
    Write-Host "✅ Detectado WAMP en: $wpDir" -ForegroundColor Yellow
} else {
    Write-Host "❌ No se detectó WordPress local. Instala en:" -ForegroundColor Red
    Write-Host "   XAMPP: C:\xampp\htdocs\wordpress\wp-content\plugins\" -ForegroundColor Cyan
    Write-Host "   WAMP:  C:\wamp64\www\wordpress\wp-content\plugins\" -ForegroundColor Cyan
    Write-Host "   O ajusta las rutas en este script" -ForegroundColor Cyan
    exit 1
}

# Crear directorio si no existe
if (-not (Test-Path $wpDir)) {
    New-Item -ItemType Directory -Path $wpDir -Force | Out-Null
    Write-Host "📁 Creado directorio: $wpDir" -ForegroundColor Yellow
}

# Copiar archivos del plugin
Write-Host "📋 Copiando archivos del plugin..." -ForegroundColor Yellow
Copy-Item "aqua-patterns\*" -Destination $wpDir -Recurse -Force

Write-Host "✅ Plugin instalado exitosamente en: $wpDir" -ForegroundColor Green
Write-Host "🌐 Ve a tu WordPress local y activa 'Aqua Patterns'" -ForegroundColor Cyan
Write-Host "📝 Los patrones aparecerán en Editor → Patrones → Aqua" -ForegroundColor Cyan

# Mostrar estructura instalada
Write-Host "`n📂 Estructura instalada:" -ForegroundColor Magenta
Get-ChildItem -Path $wpDir -Recurse | Format-Table Name, Length, LastWriteTime
