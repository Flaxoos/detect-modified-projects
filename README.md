## Execute gradle tasks on projects

This GitHub Action allows you to detect modified subprojects in a monorepo, so you can execute operations like build and publish only on those projects, allowing you to reduce the number of workflows per project

### Inputs

-  `project_prefixes`  (required): prefixes of the names of the projects in question, comma-separated.

### Outputs

-  `modified_projects` : the detected modified projects.

### Example Usage
```yaml
name: Detect modified subprojects
description: Detect modified subprojects

on:
  push:
    branches:
      - main

jobs:
  build:
  runs-on: ubuntu-latest

  steps:
    - name: Checkout repository
      uses: actions/checkout@v2

    - name: Detect modified subprojects
      uses: ./.github/actions/detect-modified-projects
      id: detect-modified-subprojects
      with:
        project_prefixes: my-prefix,his-prefix
```
