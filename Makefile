# ═══════════════════════════════════════════════════════
# Makefile - Tasks API
# ═══════════════════════════════════════════════════════
# Comandos simples para desarrollar tu aplicación.
# Ejecuta 'make' o 'make help' para ver todos los comandos.

.PHONY: help dev start install format lint test clean

# Muestra la lista de comandos disponibles por defecto
.DEFAULT_GOAL := help

# ───────────────────────────────────────────────────────
# 📚 AYUDA
# ───────────────────────────────────────────────────────

help: ## 📚 Muestra esta ayuda
	@echo "════════════════════════════════════════"
	@echo "  Tasks API - Comandos Disponibles"
	@echo "════════════════════════════════════════"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  %-15s %s\n", $$1, $$2}'
	@echo ""
	@echo "Ejemplo: make dev"
	@echo ""

# ───────────────────────────────────────────────────────
# 🚀 COMANDOS PRINCIPALES
# ───────────────────────────────────────────────────────

dev: ## 🚀 Inicia el servidor en modo desarrollo
	@echo "🚀 Iniciando servidor..."
	uv run uvicorn src.tasks_api.main:app --reload --host 0.0.0.0 --port 8080

start: ## ▶️  Inicia el servidor en modo producción
	@echo "▶️  Iniciando servidor en producción..."
	uv run uvicorn src.tasks_api.main:app --host 0.0.0.0 --port 8080

install: ## 📦 Instala todas las dependencias
	@echo "📦 Instalando dependencias..."
	uv sync

# ───────────────────────────────────────────────────────
# 🧹 CALIDAD DE CÓDIGO
# ───────────────────────────────────────────────────────

format: ## ✨ Formatea el código automáticamente
	@echo "✨ Formateando código..."
	uv run ruff format .

lint: ## 🔍 Revisa errores en el código
	@echo "🔍 Revisando código..."
	uv run ruff check .

fix: ## 🔧 Arregla errores automáticamente
	@echo "🔧 Arreglando errores..."
	uv run ruff check --fix .

test: ## 🧪 Ejecuta los tests
	@echo "🧪 Ejecutando tests..."
	uv run pytest -v

# ───────────────────────────────────────────────────────
# 🔄 UTILIDADES
# ───────────────────────────────────────────────────────

clean: ## 🧹 Limpia archivos temporales
	@echo "🧹 Limpiando archivos temporales..."
	@find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".ruff_cache" -exec rm -rf {} + 2>/dev/null || true
	@find . -type f -name "*.pyc" -delete 2>/dev/null || true
	@echo "✅ Limpieza completada"

update: ## 🔄 Actualiza las dependencias
	@echo "🔄 Actualizando dependencias..."
	uv lock --upgrade

check: format lint test ## ✅ Ejecuta format + lint + tests
	@echo ""
	@echo "✅ ¡Todo listo! Código verificado"
	@echo ""