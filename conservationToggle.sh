
#!/bin/bash
cd /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/

if [[ $1 == "on" ]]; then
  echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
  clear
  echo -e "Conservation Mode has been turned \e[1;32mON\e[0m\n"

elif [[ $1 == "off" ]]; then
  echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
  clear
  echo -e "Conservation Mode has been turned \e[1;31mOFF\e[0m\n"
  
else
  clear
  echo -e "Select a Mode. [on/off]\n"
  
fi

