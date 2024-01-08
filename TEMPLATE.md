# Template Info

This setup is for strategy when you branch out with a fix/feat/chore branch, and do merge to main with PR

See `action_config.toml` for docker/gitops config. Update it by following all the instructions given in the file(mentioned as comments).

Note: Merge all your changes to main only with a PR, this will review all your settings.

## All PR titles need to start with either

Pull request review will check if you are using one of these.

- fix: Some useful text what you fix
- fix!: Some useful text why you make a breaking change with your fix
- feat: Some useful text what your feature add
- feat!: Some useful text why you make a breaking change with your feature
- chore: Some useful that what you have done, refactor/docs, forcing new build etc


## All PR need release label

Select between:

- release-auto - for following semver
- release-patch - to force patch 1.0.X
- release-minor - to force patch 1.X.0
- release-major - to force patch X.0.0
- release-skip - to skip release after merge

Note: If a label is missing in a PR then 'release-skip' label will be added by default to the PR.

<br /><br />

Below are the repository settings and branch protection rules which you will need to configure -

## Lock PR to Squash merging

![Pull_request_merge](https://github.com/Aibel365/python-app-template/blob/d5a219f73a91d787e242e775880be59e08beee8a/images/PR.png)

<br /><br /><br /><br />

## Add branch rule with require PR before merging

![Branch_Protection](https://github.com/Aibel365/python-app-template/blob/d5a219f73a91d787e242e775880be59e08beee8a/images/BP_Rule.png)
<br /><br /><br /><br />

## Require status check to pass before merging

`TODO add image` - search for "Add me as branch protection" and just use that one.

<br />

## Automatic workflows triggered on pushing code to different branches

- **Create a PR to merge code in main branch**
        -> Generates a new semantic version.
        -> As a part of PR review,  PR title, PR label, configuration in action-config.toml is verified. If any of these configuration is missing or wrong then the workflow fails.
        -> Once the PR is merged, the configuration in action-config.toml will be checked specifically for gitops, docker, conda and pypi and then build a docker image,push it to ACR , update the new docker image version in yaml of gitops repository.
- **Merge code to branches other than main**
        -> In this case, PR and action-config.toml will be verified and reviewed for any missing or wrong information.
        -> After verification, if everthing is ok then docker image will be created, build and pushed to ACR, gitops repository will be updated with new docker image version.
- **On pushing a new tag**
        -> Like other workflows, this will also verifies the configuration in action-config.toml and then take the required action like create, build and push docker image, & updated the new docker image version in  yaml file of respective gitops repository.
<br />

## Manual worflows

- **manual_dispatch_new_release.yaml** - Creating a new semantic release version
- **manual_dispatch_pre_release.yaml** - Dispatch the new semantic release version created by above workflow
