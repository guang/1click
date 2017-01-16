tag=latest

command="python /home/dev/mudraker/mudraker/app.py"
db_env="staging"
if [ $1 == 'gunicorn' ]; then
  command="gunicorn --workers 4 --timeout 1800 --bind 0.0.0.0:5000 wsgi:app"
fi
if [ $1 == 'prod' ]; then
  db_env="prod"
fi


docker rm mudraker
docker run -it --rm \
 --name mudraker \
 -p 0.0.0.0:5000:5000 \
 -e 'HOME=/home/dev' \
 -e 'PYTHONPATH=/home/dev/mudraker' \
 -v /Users/guangyang/mudraker:/home/dev/mudraker \
 komodohealth/mudraker:${tag} ${command}
