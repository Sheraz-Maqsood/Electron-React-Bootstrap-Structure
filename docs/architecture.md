
**docs/architecture.md**
```markdown
# Architecture

## Overview

This application is structured using the Model-View-Controller (MVC) pattern and a component-based architecture for the React frontend. The main process of Electron is responsible for creating windows and handling system-level events, while the renderer process runs the React application.

## Directory Structure

- `src/main`: Contains the main process code for Electron.
- `src/renderer`: Contains the React application code.
- `src/shared`: Contains shared constants and utilities.
- `public`: Contains the main HTML file for the renderer process.
- `build`: Output directory for the production build.
- `config`: Contains Webpack configuration files.
- `docs`: Project documentation.
