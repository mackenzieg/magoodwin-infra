SERVICE_FILE=lcd-display.service

sudo touch /etc/udev/rules.d/99-i2c.rules
echo 'SUBSYSTEM=="i2c-dev", TAG+="systemd"' | sudo tee /etc/udev/rules.d/99-i2c.rules

sudo apt install -y i2c-tools python3-pip


sudo cp $SERVICE_FILE /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable $SERVICE_FILE
sudo systemctl start $SERVICE_FILE
