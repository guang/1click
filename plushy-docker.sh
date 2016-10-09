tag=1.1.0

docker run -it --rm \
  -p 0.0.0.0:7778:7778 \
  -p 0.0.0.0:4040:4040 \
  -p 0.0.0.0:8080:8080 \
  -e "HOME=/home/dev" \
  -e "PYTHONPATH=/home/dev/plushy:/usr/spark-1.6.0-bin-hadoop2.4/python/:/usr/spark-1.6.0-bin-hadoop2.4/python/lib/py4j-0.9-src.zip" \
  -e "PLUSHY_VERSION=1.6" \
  -e "SPARK_MASTER_DNS=" \
  -v /Users/guangyang/kube-fun/secrets:/home/dev/.ssh \
  -v /Users/guangyang/.aws:/home/dev/.aws \
  -v /Users/guangyang/kube-fun/secrets:/usr/spark-1.6.0-bin-hadoop2.4/conf \
  -v /Users/guangyang/kube-fun/secrets:/home/dev/airflow_config \
  -v /Users/guangyang/plushy:/home/dev/plushy \
  -v /Users/guangyang/dagger:/home/dev/dagger \
  -v /Users/guangyang/notebooks:/home/dev/notebooks \
  -v /Users/guangyang/ledger:/home/dev/ledger \
  guangyang/docker-spark-driver:${tag} \
  /bin/bash /run-local-ipynb.sh
