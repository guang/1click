tag=latest

docker rm metrics
docker run -it --rm \
  --name metrics \
  -p 0.0.0.0:5000:5000 \
  -e 'HOME=/home/dev' \
  -e 'PYTHONPATH=/home/dev/metrics' \
  -v /Users/guangyang/metrics:/home/dev/metrics \
  -v /Users/guangyang/kube-fun/.kubernetes-us-west-2a:/home/dev/.kube \
  guangyang/fusion-metrics:${tag} python /home/dev/metrics/metrics/app.py
