# crontab -l # list crontabs
# crontab -e # edit crontab
# crontab -r # remove everything from crontab
# systemctl status crond # show status of the cron daemon

# 21 16 * 10 * echo "Cron Test" > cron.log # default location is home dir

# cd /etc/cron.daily and put the script inside the folder # will run the script everyday
# cd /etc/cron.hourly and put the script inside the folder # will run the script per hour
# cd /etc/cron.monthly and put the script inside the folder # will run the script per month
# cd /etc/cron.weekly and put the script inside the folder # will run the script per week

# Remark: The time when the daily/hourly/weekly/monthly scripts run is specified in /etc/anacrontab
# cat /etc/anacrontab
