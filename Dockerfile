FROM postgres:14.4
USER root
# install sqitch
RUN apt-get update && apt-get install -yq sqitch && sqitch config --user user.name 'Docker' && sqitch config --user user.email 'docker@mi-c3.com'
USER postgres
