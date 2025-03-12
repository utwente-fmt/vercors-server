FROM utwentefmt/tool-server:v1.0.2

RUN apt-get -q update && \
    apt-get -qy install wget openjdk-17-jre-headless clang && \
    rm -r /var/lib/apt/lists/*

RUN wget -q -O vercors.deb https://github.com/utwente-fmt/vercors/releases/download/v2.3.0/vercors-2.3.0-debian.deb && \
    dpkg -i vercors.deb && \
    rm vercors.deb

COPY tool.js ./
