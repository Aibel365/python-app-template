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

![Add_me_as_Branch_Protection_check](https://github.com/Aibel365/python-app-template/assets/121802270/d9ce10d6-cdf5-40ff-b72f-ff6fe86d645b)


<br />

## Automatic workflows triggered on pushing code to different branches

<ul>
  <li><b>auto_pull_request_review.yaml</b>
    <ul>
      <li>Triggers on pull_request_target.</li>
      <li>Reviews code based on configuration set in the action_config.toml, and reports back to pull request with status.</li>
    </ul>
  </li>
  <li><b>auto_pull_request_merge.yaml</b>
    <ul>
      <li>Triggers on pull_request (if merged).</li>
      <li>Generates new release/changelog -> this will again trigger tag push.</li>
    </ul>
  </li>
  <li><b>auto_tag_push.yaml</b>
    <ul>
      <li>Triggers on tag push.</li>
      <li>Triggers actions to build docker/gitops if enabled in action_config.toml.</li>
    </ul>
  </li>
  <li><b>auto_push_generate_pre_release.yaml</b>
    <ul>
      <li>Triggers on push to other branches. (as long as its not main branch).</li>
      <li>Triggers build of "next image" and update gitops/docker if enabled in action_config.toml.</li>
    </ul>
  </li>
</ul>



## Manual Worflows

<ul>
  <li><b>manual_dispatch_new_release.yaml</b>
    <ul>
      <li>Creates a new semantic release version based on last created.</li>
    </ul>
  </li>
  <li><b>manual_dispatch_pre_release.yaml</b>
    <ul>
      <li>Triggers build of "next image" and update gitops/docker if enabled in action_config.toml.</li>
    </ul>
  </li>
</ul>


