#!/bin/sh
cd /app
PYTHONPATH=/app alembic -c backend/alembic.ini upgrade head
exec uvicorn backend.app.main:app --host 0.0.0.0 --port ${PORT:-8000}
