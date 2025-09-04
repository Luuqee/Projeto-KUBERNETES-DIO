echo "Criando as imagens....."

docker build -t luuqee/projeto-backend:1.0 k8s-projeto1-app-base/backend/.
docker build -t luuqee/projeto-database:1.0 k8s-projeto1-app-base/database/.

echo "Fazendo o push das imagens....."

docker push luuqee/projeto-backend:1.0
docker push luuqee/projeto-database:1.0

echo "Criando serviços no cluster kubernetes....."

kubctl apply -f ./services.yml

echo "Criando os deployments no cluster kubernetes....."

kubectl apply -f ./deployment.yml