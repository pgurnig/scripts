# Shell Scripts
## get-dynamo-tables-all-regions.sh
This shell script loops through the regions available as of December 2022 listing tables in each Region. Note that, by default, AWS Documentation stipulates that "the output from [ListTables](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/dynamodb/list-tables.html) is paginated, with each page returning a maximum of 100 table names." The script assumes three items:
1) the AWS CLI is installed and available in the terminal;
2) the terminal supports Bash;
3) the shell script has the appropriate execute permissions to run. (chmod +x get-dynamo-tables-all-regions.sh).

It's relatively easy to get a list of regions in the cli using:
```
aws ec2 describe-regions
```
