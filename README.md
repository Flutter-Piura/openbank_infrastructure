# OpenBank Infrastructure

Entorno local, contenedores y futuras definiciones de despliegue de OpenBank.

> OpenBank es educativo y trabaja únicamente con datos y dinero ficticios.

## Requisito de carpetas

Compose usa los repositorios hermanos. Clónalos con esta estructura (los guiones bajos son intencionales):

```text
Flutter_Piura/
├── openbank_api/
├── openbank_infrastructure/
└── openbank_mobile/
```

## Inicio rápido

Con Docker Desktop activo:

```bash
cp .env.example .env
docker compose up --build --wait
./scripts/smoke.sh
```

La API queda en `http://127.0.0.1:3000` y PostgreSQL en `127.0.0.1:5432`. El usuario de la demo es `demo@openbank.local` con contraseña `OpenBankDemo!2026`.

`migrate` espera que PostgreSQL esté sano, aplica en orden las migraciones pendientes y finaliza; la API solo arranca cuando esa tarea termina correctamente.

## Operación local

```bash
docker compose ps
docker compose logs -f api
docker compose down
```

`docker compose down` conserva los datos. Para reiniciar únicamente la información ficticia del entorno de desarrollo:

```bash
docker compose down --volumes
docker compose up --build --wait
```

No reutilices las credenciales ni el secreto de ejemplo fuera de desarrollo local.

## Principios

- Configuración reproducible y documentada.
- Secretos fuera de Git; solo archivos `.env.example`.
- Imágenes y versiones fijadas explícitamente.
- Health checks, migraciones y seeds controlados.
- Staging solo después de validar el MVP local.
- La API no arranca con un esquema incompleto.
- El volumen de PostgreSQL se conserva entre reinicios normales.

Consulta el [plan maestro](https://github.com/Flutter-Piura/openbank_docs/blob/main/PLAN_MAESTRO.md) y [ADR-0001](https://github.com/Flutter-Piura/openbank_docs/blob/main/adr/0001-clean-architecture-contract-first.md).

## Contribuir

Lee [CONTRIBUTING.md](CONTRIBUTING.md) y [SECURITY.md](SECURITY.md).

## Licencia

[MIT](LICENSE).
