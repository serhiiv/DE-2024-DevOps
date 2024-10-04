# syntax=docker/dockerfile:1

FROM python:3.12.3 AS base

# Prevents Python from writing pyc files.
ENV PYTHONDONTWRITEBYTECODE=1
# Keeps Python from buffering stdout and stderr to avoid situations where
# the application crashes without emitting any logs due to buffering.
ENV PYTHONUNBUFFERED=1

# Download dependencies as a separate step to take advantage of Docker's caching.
RUN python -m pip install pyinstaller

WORKDIR /app

# Copy the source code into the container.
COPY . .

# make binary file
RUN pyinstaller --onefile app.py


FROM python:3.12.3-slim
WORKDIR /app
COPY --from=base /app/dist/* .

# Create a non-privileged user that the app will run under.
# See https://docs.docker.com/go/dockerfile-user-best-practices/
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid 10001 \
    appuser
# Copy the source code into the container.
# Switch to the non-privileged user to run the application.
USER appuser

CMD ["./app"]
