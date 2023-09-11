# TensorFlow-Serving-API

A Docker image for serving TensorFlow models via a REST API.

## Overview

TensorFlow Serving enables you to deploy and serve TensorFlow models via a REST API, making it easier to make predictions using your trained models.

For a comprehensive understanding of TensorFlow Serving, you can watch this informative [YouTube video](https://www.youtube.com/watch?v=P-5sMcpTE0g&t=604s) and refer to this [GitHub repository](https://github.com/codebasics/deep-learning-keras-tf-tutorial/tree/master/48_tf_serving).

## Setup

To use this TensorFlow Serving Docker image, follow these steps:

1. Clone this repository as a Git submodule in your project or clone it separately.

2. Organize your models in the following folder structure:
   ```
   saved-models/
   ├── models/               # This is where TensorFlow saves your models
   └── tf-serving-configs/   # Save your TensorFlow Serving configurations (sample configurations in [config-samples/](config-samples))
   ```

3. Create a local `.env` file inside this repository with the necessary environment variables:

   ```bash
   # .env

   # Define the port for the REST API
   REST_API_PORT=8605

   # Model location in the host machine
   MODELS_LOCATION=../training/saved-models

   # The configuration file of the models to be used when loading the TensorFlow Serving API
   CONFIGURATION_FILE=models.config.a
   ```

   You can use the example from the [sample.env](sample.env) file and customize it as needed.

## Usage

Once you have set up the environment, you can start your api with:
```bash
$ docker compose up
```

Then you can interact with your TensorFlow Serving API using the following endpoints:

- Access model information: `http://localhost:8605/v1/models/my-model`

To make predictions, you can use one of these URLs:

- By model version number: `http://localhost:8605/v1/models/my-model/versions/2:predict`
- By model name: `http://localhost:8605/v1/models/my-model/labels/beta:predict`

These endpoints allow you to efficiently use your TensorFlow models for prediction through the REST API.
