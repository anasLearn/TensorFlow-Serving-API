FROM tensorflow/serving:2.13.0

# This specifies the directory to work
WORKDIR /saved-models  

EXPOSE 8605

ENTRYPOINT ["tensorflow_model_server", "--rest_api_port=8605", "--model_name${model_name}", "--model_base_path=/saved-models"]
