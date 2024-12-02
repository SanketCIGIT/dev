```
cd ~
```
```
mkdir flask-example
```
```
cd flask-examplecd ..
```
```
nano app.py
```
```
nano Dockerfile
```
```
nano requirements.txt (add -r infront of install)
```
```
mkdir templates
```
    
```
cd templates
```
```
nano index.html
```
```

```
```
cd flask-example
```
```
```
```
apt update -y
```
```
apt install python3-pip
```
```
pip install flask
```
```
cd ~/flask-example
```
```
chmod 777 .
   
```
```
python3 app.py 
```


Broswer:localhost:5000 

```
docker build -t flask-docker-example .
```
```
docker run -d -p 5000:5000 flask-docker-example
```

Broswer:localhost:5000 


```
microk8s enable registry
```

```
docker tag flask-docker-example:latest localhost:32000/flask-docker-example:latest
```

```
docker push localhost:32000/flask-docker-example:latest
```

```
nano deployment.yaml
```

```
nano service.yaml
```

```
docker stop <container id>
```

```
docker rm <cotainer id>
```

```
microk8s kubectl apply -f deployment.yaml
```
```
microk8s kubectl apply -f service.yaml
```

```
microk8s kubectl get pods
```

```
microk8s kubectl get services
```

```
hostname -I
```

```
microk8s kubectl port-forward service/flask-service 8080:80
```

Browser : localhost:8080

```
microk8s dashboard-proxy
```

open browser and access https://127.0.0.1:10443

paste the token from terminal

kubernetes->pods-> 3 dots-> exex

on pod terminal:      apk update
                apk add curl
                hostname -i


## Deployment on Cloud(AWS)

  - install aws cli

```
aws --version
```
```
aws configure
```

```
curl -L "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" -o eksctl.tar.gz

```
```
tar -xzf eksctl.tar.gz -C /usr/local/bin
```
```
rm eksctl.tar.gz
```

```
eksctl create cluster --name my-ditiss-cluster --region us-east-1 --node-type t3.medium --nodes 2
```
 if it is giving kubernets version error then:
```
curl -LO https://dl.k8s.io/release/v1.31.0/bin/linux/amd64/kubectl
```
```
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```
```
kubectl
```



```
aws eks --region us-east-1 update-kubeconfig --name my-ditiss-cluster1
```


![[Pasted image 20241202112451.png]]