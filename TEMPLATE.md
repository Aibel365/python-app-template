# Template Info

This setup is for strategy when you branch out to with a fix/feat/chore branch, and do PR to main with PR

Atm 4 actions:
- Check pull request (title, release label etc)
- Run pylint on pullrequest
- Generate release
- Make test image (manual)

<br/><br/><br/><br/>

## Update `semantic-release.toml`

```toml
[tool.docker]
enabled = true
image_name = "app-python"
team_name = "python-team"
```
> [!NOTE]
> `[tool.docker]`
> For building docker image, set to false if not needed
>
> This expects to find these under github repo secrets
> secrets.AZURE_SERVER_URLS_CONTAINER_REGISTRY 
> secrets.AZURE_CLINET_ID_CONTAINER_REGISTRY
> secrets.AZURE_CLIENT_SECRET_CONTAINER_REGISTR

<br/><br/>

```toml
[tool.gitops]
enabled = true
repo = "VegarRingdalAibel/simple_action"
file = "test.yaml"
kind = "Deployment"
image_path = '["spec"]["template"]["spec"]["containers"][0]["image"]'
```

> [!NOTE]
> `[tool.gitops]`
> Updating a gitops with new image version based on github action jobid
> USE ONLY ON TEST!!!
>
> This expects to find these under github repo secrets
> secrets.GITOPS_KEY
> This key needs to be a deploy key with write privileges

<br/><br/>

```toml
[tool.json]
enabled = false
package_json_path = 'package.json'
package_lock_json_path = 'package-lock.json'
```

> [!NOTE]
> `[tool.json]`
> Option added so it can use in a javascript projects later.
> You want to disable this for python projects

<br/><br/>

```toml
[tool.semantic_release]
version_toml = ["pyproject.toml:project.version"]
```

> [!NOTE]
> `[[tool.semantic_release]`
> If you are not using python, then disable this line, lave the rest


<br/><br/>

Sample `pyproject.toml`, if this is set in `[tool.semantic_release]` section, version gets updated
```toml
[project]
name = "app-python"
version = "1.0.0"
authors = [{ name = "John Doe", email = "john.doe@whoknows.com" }]
```

<br/><br/>

See pull `./github/pull_request_template.md` for info about PR

<br /><br />

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
