# Dev Container for DevOps Mastery Journal

This folder contains a minimal VS Code Dev Container configuration used to develop the journal inside a reproducible container.

How to use
- In VS Code: Command Palette -> "Dev Containers: Reopen in Container" (or "Remote-Containers" commands).
- From the command line with the Dev Containers CLI: `devcontainer up --workspace-folder .`

What it includes
- `Dockerfile`: base image + `git`, `zsh`, and `pandoc`.
- `devcontainer.json`: VS Code settings (uses `zsh`), and a couple of recommended Markdown extensions.
