FROM billbuie/slashem:latest
COPY --chown=dungeonmaster:dungeon slashem-0.0.7E7F2 /home/dungeonmaster/sources
COPY bashrc /home/dungeonmaster/.bashrc
USER dungeonmaster
WORKDIR /home/dungeonmaster
