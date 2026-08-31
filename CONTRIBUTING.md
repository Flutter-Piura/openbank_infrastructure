# Contribuir a OpenBank Infrastructure

1. Revisa plan, ADR y versiones de API compatibles.
2. Abre o enlaza un issue para cambios de entorno o despliegue.
3. Crea una rama corta desde `main` y usa Conventional Commits.
4. Nunca confirmes secretos, credenciales, dumps o datos reales.

Ejemplos:

```text
feat(local): add PostgreSQL health check
fix(compose): wait for database readiness
docs(setup): explain environment variables
```

Todo PR debe incluir comandos de validación, impacto operativo, rollback y cambios de compatibilidad. Los recursos cloud, dominios y gastos necesitan autorización específica aunque exista permiso para desarrollar el proyecto.

Al participar aceptas el [Código de conducta](CODE_OF_CONDUCT.md).
