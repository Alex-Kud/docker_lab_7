# Базовый образ Python (можно использовать alpine для меньшего размера)
FROM python:3.9-slim

# Создадим рабочую директорию
WORKDIR /app

ENV PYTHONPATH "${PYTHONPATH}:/app"

# Копируем файл зависимостей
COPY requirements.txt .

# Установим зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Скопируем исходный код
COPY . .

# Укажем порт (для документации)
EXPOSE 5000

# Запуск приложения
CMD ["python", "app/main.py"]
