> [!NOTE]
> 1. Read [TEMPLATE.md](https://github.com/Aibel365/python-app-template/blob/main/TEMPLATE.md) and update github settings like it explains.
> 2. Update this readme/delete this note.
> 3. To use this template, select 'Use this template' option and create a new repository from it.


# Python Project Template

Write something useful about the app/script you are making, what it does/solves.



<br/><br/><br/>

## 👶First time using this project (local git clone)

Install [pixi](https://pixi.sh/latest/)

- If your code uses environment variables, you can add a `.env` file (see own section) for local development.
- To run the code: `pixi run start`
- To test the code: `pixi run test`
- To build the docker image: `pixi run build-docker` (assumes you have docker installed)
- To run the docker image: `pixi run start-docker`
- To open a development shell inside your docker container: `pixi run shell`
- To build a conda package of your python module: `pixi run build-conda` (see the created `output/` folder)

Note! If you don't have docker installed in your Windows os but inside a wsl you can do
- `pixi run build-docker-wsl`
- `pixi run start-docker-wsl`
- `pixi run shell-wsl`



<br/><br/><br/>

## 🐛 Debug vscode issues:

If you are not able to debug, do this:
* use keys SHIFT + CONTROL + P
* select `Python: Select interpreter`
* now you need to enter interpreter path, select .pixi root, and env you are using

Now be able to start debug of `main.py`

<br/><br/><br/>

## 🔬 Linting code:

This is how you can run local linting if needed.
- `pixi run lint`

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

