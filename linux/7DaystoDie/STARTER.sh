while [ true ]; do
	read -p "Change Dir 2s" -t 2
	cd /home/steam/7daystodie/
	read -p "Running Update 2s" -t 2
        steamcmd +force_install_dir ~/7daystodie +login anonymous +app_update 294420 validate +quit
	read -p "launching 3s" -t 3
	
	./startserver.sh -configfile=myserverconfig.xml

	TIME=5
        echo "----- Press enter to prevent the server from restarting in $TIME seconds -----";
        read -t $TIME input;
        if [ $? == 0 ]; then
                break;
        else
                echo "-------------------- SERVER RESTARTS --------------------";
        fi
done
