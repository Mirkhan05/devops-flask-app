FROM python:3.11-slim

# Создаём рабочую директорию в контейнере
WORKDIR /app

# Копируем только папку app внутрь контейнера
COPY ./app /app

# Копируем requirements.txt
COPY requirements.txt /app/requirements.txt

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt || true

# Запускаем Flask-приложение
CMD ["python", "main.py"]
