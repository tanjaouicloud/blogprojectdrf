#!/usr/bin/bash 

sed -i 's/\[]/\["35.181.169.124"]/' /home/ubuntu/blogprojectdrf/mysite/settings.py

python manage.py migrate 
# python manage.py makemigrations     
python manage.py collectstatic
sudo service gunicorn restart
sudo service nginx restart
#sudo tail -f /var/log/nginx/error.log
#sudo systemctl reload nginx
#sudo tail -f /var/log/nginx/error.log
#sudo nginx -t
#sudo systemctl restart gunicorn
#sudo systemctl status gunicorn
#sudo systemctl status nginx
# Check the status
#systemctl status gunicorn
# Restart:
#systemctl restart gunicorn
#sudo systemctl status nginx
