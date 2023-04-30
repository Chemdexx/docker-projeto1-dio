# Usando a imagem oficial do Python 3
FROM python:3

# Definindo o diretório de trabalho para /app
WORKDIR /app

# Copiando o arquivo "requirements" para o contêiner e instalando os pacotes necessários
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiando o arquivo YAML e programa Python para o conteiner
COPY config.yaml .
COPY generate_random_numbers.py .

# Definindo o comando a ser executado quando o contêiner for iniciado
CMD ["python", "generate_random_numbers.py"].

# Contruindo a imagem
docker build -t myapp .

# Executando a imagem
docker run --rm -v $(pwd)/output:/app/output myapp
