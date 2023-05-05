FROM python:3.11

RUN pip install fastapi uvicorn spacy

COPY ./api /api/api

ENV PYTHONPATH=/api
WORKDIR /api

EXPOSE 8000

ENTRYPOINT ["uvicorn"]
CMD ["api.main:app_test", "--host", "0.0.0.0"]