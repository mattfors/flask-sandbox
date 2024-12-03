FROM continuumio/anaconda3

WORKDIR /app

COPY . /app

RUN conda env create -f environment.yml

RUN echo "source activate flask-sandbox" > ~/.bashrc
ENV PATH /opt/conda/envs/flask-sandbox/bin:$PATH

EXPOSE 5000

CMD ["python", "app.py"]
