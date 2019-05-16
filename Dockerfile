FROM debian:9-slim

LABEL Author="Donut Ping"

ENV USER=container HOME=/home/container

RUN dpkg --add-architecture i386

RUN apt-get update && \
    apt-get install -y -qq \
    curl \
    git \
    wine \
    wine32 \
    wine64 \
    libwine \
    libwine:i386 \
    fonts-wine \
    xvfb \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

RUN useradd -ms /bin/bash ${USER} \
    && chown ${USER}:nogroup ${HOME} \
    && cd ${HOME}

USER ${USER}

WORKDIR ${HOME}

COPY ./eldewrito ./eldewrito

ENV RCONPORT=11776 OTHERPORT=11775 GAMEPORT=11774 MESSAGE="PUG Server booked by Unknown - discord.gg/abc123" SERVERNAME="Halo OCE Pug Server #1" SERVERPASSWORD="abc123" RCONPASSWORD="abc123" PLAYERNAME="Unknown"

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]