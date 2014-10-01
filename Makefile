install:
	@sudo mkdir -p /usr/share/ganglia/
	@sudo cp *.sh /usr/share/ganglia/
	@sudo cp cron.d/* /etc/cron.d/

