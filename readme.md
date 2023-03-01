#Nuclei Template Scanner

This Bash script automates the process of scanning a target domain with all the Nuclei templates available in a local directory. The output is saved in a separate file for each template, with the name of the file being the same as the name of the template.

##Prerequisites

1. [Nuclei](https://nuclei.projectdiscovery.io/) - Make sure that Nuclei is installed on your system and its binary is included in your system's PATH environment variable.

2. [Nuclei Templates](https://github.com/projectdiscovery/nuclei-templates) - Download the Nuclei templates from the official repository and save them in a local directory on your system.

##Usage
 1. Open the terminal and navigate to the directory containing the Bash script.
 2. Make sure that the script has executable permissions by running the following command: 
 			`chmod +x nuclei-template-scanner.sh`
 3. Run the script with the following command, providing the target domain as the command-line argument:
	`./nuclei-template-scanner.sh example.com`
 4. The script will create a new directory called "nuclei-results" in the current directory and save the output of each template scan in a separate file in that directory, with the name of the file being the same as the name of the template.

##Customization

You can customize the script by modifying the following variables:

-> `NUCLEI_TEMPLATES_DIR` - The path to the local directory containing the Nuclei templates. By default, it is set to "/Users/prajeshyeotikar/nuclei-templates".

-> `TARGET_DOMAIN` - The target domain to scan. This is provided as the command-line argument when running the script.

-> `OUTPUT_DIR` - The name of the directory where the output files will be stored. By default, it is set to "nuclei-results".

-> `OUTPUT_FORMAT` - The format of the output file. By default, it is set to ".txt".

##Limitations

This script assumes that Nuclei and the Nuclei templates are installed and configured correctly on your system. It also assumes that all the templates in the local directory are compatible with the target domain. If a template is not compatible, it will generate an error message but the script will continue running.
