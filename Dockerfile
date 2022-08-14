FROM python:3.7-slim
COPY . /app
WORKDIR /app
COPY authlib/ /app/authlib
RUN ls -la /app/authlib/*
COPY db/ /app/db
RUN ls -la /app/db/*
RUN pip install -r requirements.txt
RUN mkdir ~/.streamlit
RUN cp .env ~/.streamlit/.env
RUN cp .env ~/app/.env
EXPOSE 80
WORKDIR /app
ENTRYPOINT ["streamlit", "run"]
CMD ["app.py"]
