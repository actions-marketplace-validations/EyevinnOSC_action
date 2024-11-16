# GitHub Action for Eyevinn Open Source Cloud

This action enables you to launch instances and run jobs in Eyevinn Open Source Cloud

## Usage

`workflow.yml` Example

Run a job to perform backup of a MariaDB database and upload backup to an S3 bucket. Assuming that the AWS credentials and `mariadburl` are stored as secrets in Open Source Cloud.

```yaml
name: Perform backup

on:
  schedule:
    - cron: "0 0 * * *"
jobs:
  backup:
    runs-on: ubuntu-latest
    steps:
    - uses: EyevinnOSC/action@main
      with:
        args: create birme-mariadb-backup-s3 example -o MariaDbUrl="{{secrets.mariadburl}}" -o awsAccessKeyId="{{secrets.awsaccesskeyid}}" -o awsSecretAccessKey="{{secrets.awssecretaccesskey}}" -o awsRegion="eu-north-1" -o cmdLineArgs="s3://backup-bucket/"
      env:
        OSC_ACCESS_TOKEN: ${{ secrets.OSC_ACCESS_TOKEN }}
```
