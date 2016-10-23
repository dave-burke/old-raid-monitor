# RAID and SMART monitoring configuration

Because I forget whenever I reload my server.
	
	etc
	├── mdadm
	│   └── mdadm.conf -- Just need to add the PROGRAM line at the bottom to the system file.
	├── mdadm_warning.sh -- Specified by PROGRAM in mdadm.conf. Actually sends the event email using given variables.
	├── smartd.conf -- Specify scans for each device in the array. Details within.
	└── smartmontools
	    └── run.d
	        └── 10mutt -- Sends email when a smart error is detected.

