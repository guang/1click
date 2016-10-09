tag=1.0.0

docker run -it --rm \
  -p 0.0.0.0:8082:8082 \
  -e "HOME=/home/dev" \
  -e "PYTHONPATH=/home/dev/plushy:/usr/spark-1.6.0-bin-hadoop2.4/python/:/usr/spark-1.6.0-bin-hadoop2.4/python/lib/py4j-0.9-src.zip" \
  -e "PLUSHY_VERSION=1.6" \
  -v /Users/guangyang/kube-fun/secrets:/home/dev/.ssh \
  -v /Users/guangyang/kube-fun/secrets:/home/dev/airflow_config \
  -v /Users/guangyang/plushy:/home/dev/plushy \
  -v /Users/guangyang/dagger:/home/dev/dagger \
  guangyang/airflow-webserver:${tag} \
  /bin/bash /run-local-webserver.sh
