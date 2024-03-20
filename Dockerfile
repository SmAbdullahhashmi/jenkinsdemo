FROM centos:7
RUN for user in fctraining; do useradd $user; echo "1234" | passwd $user --stdin; done
RUN yum update && yum install mysql
