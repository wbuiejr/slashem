FROM billbuie/slashem:latest
COPY --chown=dungeonmaster:dungeon slashem-0.0.7E7F2 /home/dungeonmaster/sources
COPY bashrc /home/dungeonmaster/.bashrc
RUN apt-get -y install gtk2.0
RUN apt-get -y install bison
RUN apt-get -y install flex
RUN mkdir /usr/local/games/slashemdir
RUN chown dungeonmaster /usr/local/games/slashemdir
RUN chmod 0755 /usr/local/games/slashemdir
RUN chgrp games /usr/local/games/slashemdir
ARG ROOT_PASSWD
RUN echo "${ROOT_PASSWD}\n${ROOT_PASSWD}"|passwd
USER dungeonmaster
WORKDIR /home/dungeonmaster

