FROM python:3.12-slim

COPY . /src
WORKDIR /src

RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install

USER nobody

CMD ["flask", "run"]