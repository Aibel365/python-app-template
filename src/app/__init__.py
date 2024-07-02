"""app init"""

# loads shared "things"
# only do this on root __init__.py, nowhere else !!!!!
# only stuff main.py needs
from app.setup.print_config import print_config

__all__ = ["print_config"]
