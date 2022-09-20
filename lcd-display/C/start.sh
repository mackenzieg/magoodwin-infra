
sudo systemctl stop lcd-display.service
sudo cp lcd-display.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start lcd-display.service
