"""Module to load an manage project configurations."""
import os
import yaml


# Project root. All paths in config are relative to this.
project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), "../../"))


def load_config(project_root):
    """Load project configuration file."""
    with open(os.path.join(project_root, "config.yaml")) as p:
        config = yaml.safe_load(p)
    return config


config = load_config(project_root)

data_folder = os.path.join(project_root, config["data_folder"])
