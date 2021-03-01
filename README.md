# ProjectAutomation

### Install

```bash
git clone "https://github.com/johanstech/ProjectAutomation.git"
cd ProjectAutomation
touch .env
Open and edit .env file according to .env Format below
Open and edit .automation.sh according to where you placed this project:
source ~/<your/path>/ProjectAutomation/.env

Add 'source ~/<your/path>/ProjectAutomation/.automation.sh' to the RC file of your shell
```

### Example using Zsh

```bash
Run 'echo "source ~/<your/path>/ProjectAutomation/.automation.sh" >> ~/.zshrc' in a CLI
```

### .env Format

```bash
GIT_USERNAME="Username"
GIT_ACCESS_TOKEN="PersonalAccessToken"
PROJECT_FILEPATH="path/to/your/project/s"
```

### Usage

```bash
Run the script from anywhere by typing 'create <name of project/repository>' in a CLI
```
