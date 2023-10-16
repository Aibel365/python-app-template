# Template Info

This setup is for strategy when you branch out to with a fix/feat/chore branch, and do PR to main with PR

At the moment, below 4 actions are supported by this template:
- Check pull request (title, release label etc)
- Run pylint on pullrequest
- Generate release
- Make test image (manual)

<br/><br/><br/><br/>

## Update `semantic-release.toml` referring below instructions -

```toml
[tool.docker]
enabled = true
image_name = "app-python"
team_name = "python-team"
```
> [!NOTE]
> `[tool.docker]`
> 
> For building docker image, set to false if not needed
>
> This expects to find these under github repo secrets
> * secrets.CONTAINER_REGISTRY_ACR_URL 
> * secrets.CONTAINER_REGISTRY_ACR_USERNAME
> * secrets.CONTAINER_REGISTRY_ACR_PASSWORD

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
> 
> Updating a gitops with new image version based on github action jobid
> USE ONLY ON TEST!!!
>
> This expects to find these under github repo secrets:
> * secrets.GITOPS_KEY
> 
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
> 
> Option added so it can use in a javascript projects later.
> 
> You want to disable this for python projects

<br/><br/>

```toml
[tool.semantic_release]
version_toml = ["pyproject.toml:project.version"]
```

> [!NOTE]
> `[[tool.semantic_release]`
> 
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

Below are the repository settings and branch protection rules which you will need to configure -

## Lock PR to Squash merging

![Pull_request_merge](https://github.com/Aibel365/python-app-template/blob/d5a219f73a91d787e242e775880be59e08beee8a/images/PR.png)

<br /><br /><br /><br />

## Add branch rule with require PR before merging

![Branch_Protection](https://github.com/Aibel365/python-app-template/blob/d5a219f73a91d787e242e775880be59e08beee8a/images/BP_Rule.png)
<br /><br /><br /><br />

## Require status check to pass before merging


![Status_Check](https://github.com/Aibel365/python-app-template/blob/d5a219f73a91d787e242e775880be59e08beee8a/images/status_check.png)
<br /><br /><br /><br />


