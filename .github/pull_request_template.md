# INFO for Pull Request Author

Template you are using is created to protect you doing anything wrong.

Before you are able to merge we will run a few checks like:
* check for pyton lint errors using pylint
* check if your project is configured correctly to push to our Azure Container Registry
* check if your docker build is able to build without failing
* check if you are using conventional commits this project is configured for
* check you have have set a release label

### All PR titles need to start with either

- fix: Some useful text what you fix
- fix!: Some useful text why you make a breaking change with your fix
- feat: Some useful text what your feature add
- feat!: Some useful text why you make a breaking change with your feature
- chore: Some useful that what you have done, refactor/docs, forcing new build etc

### All PR need release label
:writing_hand: You need to add below labels first by selecting settings icon & 'Edit labels' option (which you see on the right side when creating a Pull Request) and then select one among those-

Select between:
- release-auto - for following semver
- release-patch - to force patch 1.0.X
- release-minor - to force patch 1.X.0
- release-major - to force patch X.0.0
- release-skip - to skip release, nice to use if you have more fixes/features to add before release

> All except release-skip will also generate new docker image/and push to our Azure Container Registry
