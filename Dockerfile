FROM minizinc/minizinc:edge-alpine

WORKDIR /minizinc-discord
COPY . /minizinc-discord
RUN apk add --no-cache git build-base curl python3 python3-dev py3-pip && \
    pip install pipenv && \
    pipenv install

ENTRYPOINT ["pipenv", "run"]
CMD ["python", "minizinc_discord.py"]
