FROM gcc:9.4.0

ARG USER_ID
ARG GROUP_ID
ARG USER_NAME

RUN apt update && apt install -y build-essential gdb

ENV USER_ID ${USER_ID}
ENV GROUP_ID ${GROUP_ID}
ENV USER_NAME ${USER_NAME}

RUN groupadd -g ${GROUP_ID} ${USER_NAME}
RUN useradd \
    -u ${USER_ID} \
    -g ${USER_NAME} \
    -m ${USER_NAME} \
    -s /bin/bash ;

WORKDIR /app

RUN ["/bin/bash"]
