> [!NOTE]
> 1. Read [TEMPLATE.md](https://github.com/Aibel365/python-app-template/blob/main/TEMPLATE.md) and update github settings like it explains.
> 2. Update this readme/delete this note.
> 3. To use this template, select 'Use this template' option and create a new repository from it.


# Python Project Template

Write something useful about the app/script you are making, what it does/solves.

<br/><br/>

#### 🧑‍🏭 Work in progress
* [ ] todo 1
* [ ] todo 2
* [ ] todo 3


<br/><br/><br/>

## 💡Info

* See [gitops repo](https://github.com/Aibel365/ue-something-gitops) for link to deployment/vault etc
* See `pyproject.toml` for contact info/open api tag info
* See `action_config.toml` for gitops/docker config


<br/><br/><br/>

## 🔗Links

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



<br/><br/><br/>

## ✍️ How to update code

This project uses protected main branch. So all updates have to go through [pull request](https://www.youtube.com/watch?v=8lGpZkjnkt4).

This project also forces `Squash merge`, so all your commits in a branch will only be 1 commit on main, so please try and stick to 1 fix or feature per pull request if possible.

All pull request will need to start with fix/feat/chore, and you need to label it with a release label. We also run pylint and a few other checks on you code.

<br/><br/><br/>

## 👶First time using this project (local git clone)

Install [pixi](https://pixi.sh/latest/)

- Add `.env` file (see own section)
- To run test code: `pixi run start`
- To test the code: `pixi run test`
- To build the docker image: `pixi run build-docker` (assumes you have docker installed)
- To run the docker image: `pixi run start-docker`
- To open a development shell inside your docker container: `pixi run shell`
- To build a conda package of your python module: `pixi run build-conda` (see the created `output/` folder)

Note! If you don't have docker installed in your Windows os, but inside a wsl you can do
- `pixi run build-docker-wsl`
- `pixi run start-docker-wsl`
- `pixi run shell-wsl`

<br/><br/><br/>

## 👶First time using this project (dev container vscode)

Install vscode extension `ms-vscode-remote.remote-containers`

* click bottom left corner `Open a Remote Window`, looks like 2 arrows
* select `repository`
* select `Open Repository from github`.
* sign inn if needed
* search for `python-app-template` and open it
* when its loaded, click button left corner again
* now select `Continue Working in Container Volume`

<br/><br/><br/>

## 👴🏻 Not first time using this project:

Next time only run 
- Activate virtual environment: `./venv/Scripts/activate`
- Start application: `python ./src/main.py`
- ...open web page ? 

<br/><br/><br/>

## 🐛 Debug vscode issues:

If you are not able to debug, do this:
* use keys SHIFT + CONTROL + P
* select `Python: Select interpreter`
* then select `venv` (you might need restart..)

Now be able to start debug of `main.py`



<br/><br/><br/>

## 🧊 Freeze dep, if you add new new python modules:

If you add new dependencies remember to update requirements.txt

Option 1:(will add all in virtual env)
- `pip freeze > requirements.txt`

Option 2: (only whats needed)
- `pip install pipreqs`
- `pipreqs ./ --force`


ofc, you need to run you application to make sure after..


<br/><br/><br/>

## 🔬 Linting code:

This is how you can run local linting if needed.
- `pip install ruff black isort`
- `ruff check ./src --fix`
- `isort .`
- `black ./src --config pyproject.toml`



You should run this before you do any pull request, and make sure you score 10 of 10

<br/><br/><br/>

## 🗺️ Add `.env` file

- add `.env` file

Add important:

```bash
ENV_VARIABLE_01="Fill out something..."
```

There is more you can use, but project is setup with correct defaults, to save time.

```bash

# DATABASE
ENV_VARIABLE_02="hello2"    # default: something

# AZURE
ENV_VARIABLE_02="hello2"    # default: something

# SOMETHING ELSE
ENV_VARIABLE_03="hello3"    # default: something
```
