# Template Info

This setup is for strategy when you branch out to with a fix/feat/chore branch, and do PR to main with PR

See `action_config.toml` for docker/gitops config.

When you have updated your `action_config.toml`, start with a PR, this will review all your settings.

## All PR titles need to start with either

Pull request review will check if you are using one of these.

- fix: Some useful text what you fix
- fix!: Some useful text why you make a breaking change with your fix
- feat: Some useful text what your feature add
- feat!: Some useful text why you make a breaking change with your feature
- chore: Some useful that what you have done, refactor/docs, forcing new build etc


## All PR need release label

These labels are added if they ar missing, pr is missing label for skipping release will be added by actions

Select between:

- release-auto - for following semver
- release-patch - to force patch 1.0.X
- release-minor - to force patch 1.X.0
- release-major - to force patch X.0.0
- release-skip - to skip release after merge

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
