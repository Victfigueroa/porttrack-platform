# Imagen base ligera de Python
FROM python:3.11-slim

# Configuraciones básicas
WORKDIR /app

# Copiar dependencias e instalarlas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código del backend
COPY . .

# Exponer el puerto Flask
EXPOSE 5000

# Comando de ejecución
CMD ["python", "app.py"]
 
