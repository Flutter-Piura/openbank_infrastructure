# OpenBank Infrastructure

Entorno local, contenedores y futuras definiciones de despliegue de OpenBank.

> OpenBank es educativo y trabaja únicamente con datos y dinero ficticios.

## Estado

Fundación del repositorio. El primer objetivo será ejecutar `openbank_api` y PostgreSQL localmente con Docker Compose, sin depender de servicios cloud.

## Principios

- Configuración reproducible y documentada.
- Secretos fuera de Git; solo archivos `.env.example`.
- Imágenes y versiones fijadas explícitamente.
- Health checks, migraciones y seeds controlados.
- Staging solo después de validar el MVP local.

Consulta el [plan maestro](https://github.com/Flutter-Piura/openbank_docs/blob/main/PLAN_MAESTRO.md) y [ADR-0001](https://github.com/Flutter-Piura/openbank_docs/blob/main/adr/0001-clean-architecture-contract-first.md).

## Contribuir

Lee [CONTRIBUTING.md](CONTRIBUTING.md) y [SECURITY.md](SECURITY.md).

## Licencia

[MIT](LICENSE).
