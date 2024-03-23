# Construa a imagem do Docker
docker build -t asa-web .

# Execute o container do Docker
docker run -d -p 8080:80 asa-web

