bash $HOME/kube-fun/templates/asg/set_and_tag_asg.sh kube-us-west-2a-asg-guangSpotC3XLargeLaunchConfigurationAutoscalingGroup-3H53QIMRMZLG 5
cd $HOME/kube-fun/templates/spark/guang
bash $HOME/kube-fun/templates/spark/guang/destroy-spark.sh
bash $HOME/kube-fun/templates/spark/guang/launch-spark.sh 4
kubectl delete -f $HOME/kube-fun/templates/spark/guang/spark-driver.json
kubectl create -f $HOME/kube-fun/templates/spark/guang/spark-driver.json
sleep 120
kubectl port-forward guang-spark-driver 7778 4040
