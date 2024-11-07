# Use a imagem oficial do Python como imagem base
FROM python:3.8-slim

# Defina o diretório no contêiner
WORKDIR /app

# Copia o arquivo requirements.txt para o contêiner
COPY requirements.txt .

# Instale as dependências necessárias
RUN pip install --no-cache-dir -r requirements.txt

# Copia os arquivos do aplicativo Flask para o contêiner
COPY . .

# Exponha a porta na qual o aplicativo será executado
EXPOSE 8080

# Defina o comando para executar seu aplicativo
CMD ["python", "app.py"]