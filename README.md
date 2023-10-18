> [!NOTE]
> 1. Read [TEMPLATE.md](https://github.com/Aibel365/python-app-template/blob/main/TEMPLATE.md) and update github settings like it explains.
> 2. Update this readme/delete this note.
> 3. See [info-python-sample](https://github.com/Aibel-Engineering/info-python-sample) for more general info.
> 4. To use this template, select 'Use this template' option and create a new repository from it.


# Python Project Template

Write something useful about the app/script you are making, what it does/solves.

## How to run in development

* git clone <repo-url>
* Create virtual environment: `python -m venv ./venv`
* Activate virtual environment: `./venv/Scripts/activate`
* Install dependencies: `pip install -r requirements.txt`
* add `.env` file with content:
```bash
ENV_VARIABLE_01="hello1"
ENV_VARIABLE_02="hello2"
ENV_VARIABLE_03="hello3"
```
* Start application: `python ./src/main.py`


# How to lint/format
* `pip install pylint ruff black isort`
* `isort ./src && black ./src --config pyproject.toml && ruff ./src --fix && pylint ./src/**/*.py`

## Contact person
* John Doe john.doe@whoknown.com
* Jane Doe jane.doe@whoknown.com

## Links

Common:
* [wiki](https://github.com)
* [gitops](https://github.com)

Test:
* [app web](https://github.com)
* [swagger web](https://github.com)
* [argocd](https://github.com)
* [grafana](https://github.com)
* [vault](https://github.com)

Prod:
* [app web](https://github.com)
* [swagger web](https://github.com)
* [argocd](https://github.com)
* [grafana](https://github.com)
* [vault](https://github.com)


