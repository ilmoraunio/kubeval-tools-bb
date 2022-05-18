FROM babashka/babashka:0.8.1-alpine as bb

FROM deck15/kubeval-tools:v2.7 as base
COPY --from=bb /opt/babashka-metabom.jar /opt/babashka-metabom.jar
COPY --from=bb /bin/bb /bin/bb
