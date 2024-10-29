FROM eyevinntechnology/osccli

LABEL "com.github.actions.name"="Eyevinn OSC action"
LABEL "com.github.actions.description"="Run Eyevinn OSC commands"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="blue"

LABEL version="0.1.0"
LABEL repository="https://github.com/Eyevinn/osc-action"
LABEL homepage="https://www.osaas.io"
LABEL maintainer="Eyevinn Open Source Cloud <osc@eyevinn.se>"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]