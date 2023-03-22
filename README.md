Create the Infrastructure using Terraform repo https://github.com/maniaug81/aws-terraform-code
It will deploy following AWS resources
a. VPC, Subnets, IGW
b. ASG, LB, EC2

-- Clone the repo
-- Install terraform and configure your AWS credentials
-- run terraform init
-- terraform plan
-- terraform apply 


Perform below mentioned steps to create a Jenkins pipeline to create a Docker Container on every code commit. 
1. Create Amazon linux machine on your AWS free tier account
2. Install Jenkins, Docker and Git
3. Create a repository in your github account
4. Upload the initial code to the repository
5. Create a freestyle item in Jenkins and do configuration as mentioned below
    a. Source code management - Git
    b. Provide repo, credentials and branch details
6. Select option - GitHub hook trigger for GITScm polling
7. In build steps mention the shell script you want to execute with command line arguments
8. Click on Apply and Save
9. In your Github repository click on Settings and then Webhook
   a. Payload URL will have Jenkins URL in format http://<ip address>/github-webhook/
   b. Content-type should be selected as application/json
10.Select on which events you want to trigger the Jenkins Job

Make any changes in your github code and do a commit, it should trigger a Jenkins job.
    
