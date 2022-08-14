FROM python:3.7-slim
COPY .vscode/ /app/.vscode
RUN ls -la /app/.vscode/*
COPY authlib/ /app/authlib
RUN ls -la /app/authlib/*
COPY db/ /app/db
RUN ls -la /app/db/*
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
WORKDIR /app
ENTRYPOINT ["streamlit", "run"]
CMD ["app.py"]
