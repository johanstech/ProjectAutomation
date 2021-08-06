# ProjectAutomation

### Install

Navigate to the

```bash
git clone "https://github.com/johanstech/ProjectAutomation.git"
cd ProjectAutomation
touch .env
```

Open and edit .env file according to .env format below
Open and edit .automation.sh according to where you placed this project:

```bash
source ~/<your/path>/ProjectAutomation/.env
```

Add 'source ~/<your/path>/ProjectAutomation/.automation.sh' to the RC file of your shell

Example using Zsh

```bash
Run 'echo "source ~/<your/path>/ProjectAutomation/.automation.sh" >> ~/.zshrc' in a CLI
```

### .env format

The PROJECT_FILEPATH variable should point to your base projects directory, where new projects will be created.

```bash
GIT_USERNAME="Username"
GIT_ACCESS_TOKEN="PersonalAccessToken"
PROJECT_FILEPATH="your/projects/directory"
```

### Usage

```bash
Run the script from anywhere with the CLI command 'create <name of new project>'
```
