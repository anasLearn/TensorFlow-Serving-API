FROM tensorflow/serving:2.13.0-gpu

# This specifies the directory to work
WORKDIR /saved-models  

RUN pip install --upgrade pip
RUN pip install --upgrade jupyterlab matplotlib pandas

EXPOSE 8605

ENTRYPOINT ["tensorflow_model_server", "--rest_api_port=8605", "--model_name${my-model_name}", "--model_base_path=."]
