"""This module does blah blah."""
import os
from dotenv import load_dotenv

# Collect env from our .env file
load_dotenv()

ENV_VARIABLE_01 = os.getenv("ENV_VARIABLE_01")
ENV_VARIABLE_02 = os.getenv("ENV_VARIABLE_02")
ENV_VARIABLE_03 = os.getenv("ENV_VARIABLE_03")


def print_vars(file: str):
    """This function does blah blah."""
    print(f"{file}")
    print(f"ENV_VARIABLE_01:{ENV_VARIABLE_01}")
    print(f"ENV_VARIABLE_01:{ENV_VARIABLE_02}")
    print(f"ENV_VARIABLE_01:{ENV_VARIABLE_03}")
    