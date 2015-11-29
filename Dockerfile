FROM linode/lamp:latest

MAINTAINER Boolean93 <im@ios.dog>

ADD apache.conf /etc/apache2/sites-available/example.com.conf

RUN apt-get update
RUN apt-get install -y php5-gd
RUN apt-get install -y php5-mysql

ENTRYPOINT echo "--------------------------------------------"
ENTRYPOINT echo "|     Your MySQL password is Admin2015     |"
ENTRYPOINT echo "|        Don't forget to change it!!       |"
ENTRYPOINT echo "--------------------------------------------"
