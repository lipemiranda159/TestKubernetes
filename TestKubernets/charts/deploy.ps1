#! /bin/bash
echo "Delete deployment e service"
try{
	kubectl delete deployment docker-test-deployment
	kubectl delete service docker-test-service
}
catch{
	echo "Não foi possível deletar deployment e service"
}

echo "Aplicando deployment.yaml"
kubectl apply -f deployment.yaml

echo "Aplicando service.yaml"
kubectl apply -f service.yaml


echo "Deploy concluído com sucesso!"