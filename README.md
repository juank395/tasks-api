# 📝 Tasks API

API REST profesional para gestión de tareas construida con **FastAPI** y las mejores prácticas de Python 2025.

## 🚀 Características

- (In progress) CRUD completo de tareas
- (In progress) Documentación interactiva automática
- (In progress) Validación de datos con Pydantic
- (✅) Code formatting con Ruff
- (✅) Estructura modular y profesional

## 🛠️ Tecnologías

- **Python 3.11+**
- **FastAPI** - Framework web moderno
- **uv** - Gestor de dependencias ultra rápido
- **Ruff** - Linter y formatter
- **Pytest** - Testing

## 📋 Requisitos

- Python 3.11 o superior
- [uv](https://github.com/astral-sh/uv) instalado

## 🏃 Inicio Rápido

### 1. Instalar dependencias

```bash
make install
```

### 2. Iniciar servidor de desarrollo

```bash
make dev
```

El servidor estará disponible en: **http://localhost:8080**



## 📚 Comandos Disponibles

```bash
make help      # Muestra todos los comandos
make dev       # Inicia servidor en modo desarrollo
make install   # Instala dependencias
make format    # Formatea el código
make lint      # Revisa errores
make test      # Ejecuta tests
make clean     # Limpia archivos temporales
make check     # Ejecuta format + lint + tests
```

## 🗂️ Estructura del Proyecto

```
tasks-api/
├── src/
│   └── tasks_api/
│       ├── main.py          # Aplicación principal
├── tests/                   # Tests
├── Makefile                 # Comandos útiles
└── pyproject.toml           # Configuración del proyecto
```

## 🔌 Endpoints

🚧 Work in progress


## 🎯 Próximos Pasos

- [ ] Agregar base de datos (PostgreSQL/SQLite)
- [ ] Implementar autenticación JWT
- [ ] Agregar tests
- [ ] Dockerizar la aplicación
- [ ] CI/CD con GitHub Actions

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

## 👤 Autor

Creado como proyecto de aprendizaje para dominar FastAPI y las mejores prácticas de Python.

---
