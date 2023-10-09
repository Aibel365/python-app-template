# Template Info

This setup is for strategy when you branch out to with a fix/feat/chore branch, and do PR to main with PR

Atm 4 actions:
- Check pull request (title, release label etc)
- Run pylint on pullrequest
- Generate release
- Make test image (manual)


## Update `semantic-release.toml`


```toml
[tool.docker]
enabled = true
image_name = "app-python"
team_name = "python-team"
# INFO:
# for bulding docker image, se to false if not needed
# expects to find these under github repo secrets
# secrets.AZURE_SERVER_URLS_CONTAINER_REGISTRY 
# secrets.AZURE_CLINET_ID_CONTAINER_REGISTRY
# secrets.AZURE_CLIENT_SECRET_CONTAINER_REGISTR

[tool.gitops]
enabled = true
repo = "VegarRingdalAibel/simple_action"
file = "test.yaml"
kind = "Deployment"
image_path = '["spec"]["template"]["spec"]["containers"][0]["image"]'
# INFO:
# updating gitops with new image version based on github action jobid
# expects to find these under github repo secrets
# secrets.GITOPS_KEY
# this key needs to be deloy key with write priv

[tool.json]
enabled = false
package_json_path = 'package.json'
package_lock_json_path = 'package-lock.json'
# info
# work added so I could use with in my javacsript projects later
# you want to disable this for python projects

[tool.semantic_release]
version_toml = ["pyproject.toml:project.version"]
# info
# if you are not using python, then disable this line
```

Sample `pyproject.toml` :
```toml
[project]
name = "app-python"
version = "1.0.0"
authors = [{ name = "John Doe", email = "john.doe@whoknows.com" }]
```


See pull `./github/pull_request_template.md` for info about PR

<br /><br /><br /><br />

## Lock PR to Squash merging

![image](https://github.com/VegarRingdalAibel/python-action-testing/assets/94840334/2c18d2f4-2e5c-47b9-97f3-43a8daaf41a2)

<br /><br /><br /><br />

## Add branch rule with require PR before merging

![image](https://github.com/VegarRingdalAibel/python-action-testing/assets/94840334/79949df3-6a02-4ead-8beb-8b564cbf32c9)
<br /><br /><br /><br />

## Require status check to pass before merging


![image](https://github.com/VegarRingdalAibel/python-action-testing/assets/94840334/a77f0348-0af4-4f09-adeb-7b7ebf64d8e2)
<br /><br /><br /><br />

## Dont allow overrides

![image](https://github.com/VegarRingdalAibel/python-action-testing/assets/94840334/b4dfc28a-0c89-410d-bac3-8fe52256b13c)
