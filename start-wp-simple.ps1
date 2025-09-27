Write-Host "Iniciando WordPress..." -ForegroundColor Green

# Verificar Docker
try {
    docker --version | Out-Null
    Write-Host "Docker detectado" -ForegroundColor Green
} catch {
    Write-Host "Docker no esta instalado" -ForegroundColor Red
    exit 1
}

# Crear directorio uploads
if (-not (Test-Path "uploads")) {
    New-Item -ItemType Directory -Name "uploads"
    Write-Host "Creado directorio uploads" -ForegroundColor Yellow
}

# Iniciar contenedores
Write-Host "Iniciando contenedores Docker..." -ForegroundColor Yellow
docker-compose up -d

# Esperar
Write-Host "Esperando a que WordPress este listo..." -ForegroundColor Yellow
Start-Sleep -Seconds 15

# Verificar estado
Write-Host "Verificando estado..." -ForegroundColor Cyan
docker-compose ps

Write-Host "WordPress esta listo!" -ForegroundColor Green
Write-Host "URLs disponibles:" -ForegroundColor Cyan
Write-Host "WordPress: http://localhost:8080" -ForegroundColor White
Write-Host "Admin: http://localhost:8080/wp-admin" -ForegroundColor White
Write-Host "phpMyAdmin: http://localhost:8081" -ForegroundColor White

Write-Host "Para detener: docker-compose down" -ForegroundColor Yellow
