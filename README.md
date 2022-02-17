# SmartPension Challenge

## About
Welcome to my repo for the SmartPension Chellenge repository. This repositiory contains all the code files & resources required to complete the challenge. Please review to `SP Test - Ruby.pdf` document within the `sp_challenge_details` folder for full details of the challenge.

## Set-up

- Clone repository.
- Open terminal and navigate into SmartPensionChallenge folder using `cd`.
- Run log_script.rb by typing `ruby log_script.rb` in the terminal.
- At the prompt, please enter `webserver.log`.
  ** Please note - if running an alternative logfile, please copy file into SmartPensionChallenge folder and enter name of file i.e `new_file.log` a the prompt.

## Tests

- Clone repository.
- Open terminal and navigate into SmartPensionChallenge folder using `cd`.
- Call `rspec` command to run all tests.

The following three tests have been scripted:
1. Test to chech parse method has converted data into correct format for querying.
2. Test to run #page_views method against sample logfile and get expected output.
3. Test to run #unique_page_views method against sample logfile and get expected output.

## Features & Functions

- When the script is ran using the process above, program will print list of all web pages along with their page visit count and unique page visit count.

### LogData:

  - LogData instances should be initialised with a valid file path, as described above.
  - The #parse method will parse the data within the logfile to a hash format, which will allow us to query the data.
  - The #page_views method will print to the command line a sorted list of all web pages along with their associated page views.
  - The #unique_page_views will print to the command line a sorted list of all web pages along with their associated unique page views.

## Potential additional functionality:

  - Enhanced testing for validation of data including regex to vaildate each line contains both web-page and valid IP address in the correct format.
  - Additional functions to retrieve different analysis of data i.e average page views, median etc.
  - Automated storage of data queries output to allow for comparison of web views at different times.

## Contact

Chris Hunter: chriswhunter89@gmail.com

Project Link: [https://github.com/chriswhunter89/SmartPensionChallenge.git]
