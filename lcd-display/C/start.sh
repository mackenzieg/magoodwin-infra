SERVICE_FILE=lcd-display.service

sudo systemctl stop $SERVICE_FILE
sudo systemctl disable $SERVICE_FILE
sudo rm /etc/systemd/system/$SERVICE_FILE
sudo rm /usr/lib/systemd/system/$SERVICE_FILE

sudo cp $SERVICE_FILE /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl reset-failed
sudo systemctl start $SERVICE_FILE
