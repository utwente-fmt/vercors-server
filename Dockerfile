FROM utwentefmt/tool-server:v1.0.0

RUN apt-get -q update && \
    apt-get -qy install wget openjdk-8-jre-headless clang && \
    rm -r /var/lib/apt/lists/*

RUN wget -q -O vercors.deb https://github.com/utwente-fmt/vercors/releases/download/v1.2.0/Vercors_1.2.0_all.deb && \
    dpkg -i vercors.deb && \
    rm vercors.deb

COPY tool.js ./
