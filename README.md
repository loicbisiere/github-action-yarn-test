# Yarn test

This GitHub Action is a utility that automatically run yarn test.

## Configuration

(For help storing this see the [GitHub docs](https://help.github.com/en/articles/creating-a-github-action).)
 
Next, create a new Actions workflow in your selected GitHub repository. If you don't already have a workflow file, you'll need to create a new file titled `action.yml` in the `.github/workflows` directory of your repository.  Under "Edit new file", paste the following code:

```yaml
on: push
name: Example Workflow
jobs:
  runYarnTest:
    name: Run Yarn Test
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Run Yarn Test
      uses: loicbisiere/github-action-yarn-test@v1
```

We strongly recommend that you update the second `uses` attribute value to reference the latest tag in the [loicbisiere/github-action-yarn-test repository](https://github.com/loicbisiere/github-action-yarn-test). This will pin your workflow to a particular version of the `loicbisiere/github-action-yarn-test` action.

If you already have a `action.yml` file, copy and paste the above `runYarnTest` job declaration into the `jobs` section in your existing `action.yml` file. If you wish to verify that you've pasted the above correctly, you can go into the visual editor and ensure that there are no syntax errors.

As shown in the above example, the workflow should run on the `push` event.

## Troubleshooting

Once your workflow has been created, the best way to confirm that the workflow is executing correctly is to create a new pull request with the workflow file and verify that the newly created action succeeds.

If the action fails, there may be a problem with your configuration. To investigate, dig into the action's logs to view any error messages.
