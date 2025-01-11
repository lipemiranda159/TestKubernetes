echo "Upload image with new version"
docker build -t docker-test .

docker tag docker-test lipemiranda159/docker-test:2.0

docker push lipemiranda159/docker-test:2.0

echo "Imagem atualizada!"