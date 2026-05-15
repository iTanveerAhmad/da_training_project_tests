# Docker Training Project

This project contains a Dockerfile that clones the Docker workshop example repository during build time.

## Files

- `Dockerfile` - builds a container that clones `https://github.com/docker/getting-started-app`, installs dependencies with `npm ci`, and starts the app.
- `.dockerignore` - excludes the Dockerfile from the build context copy.
- `problem.txt` - placeholder problem description.
- `opencode.json` - placeholder OpenCode configuration.
- `.opencode/placeholder.txt` - placeholder helper file.

## Build and run

1. Start Docker Desktop or ensure the Docker daemon is running.
2. From this folder, run:

```powershell
docker build -t training-task-example .
```

3. Run the container:

```powershell
docker run -p 3000:3000 training-task-example
```

4. Open `http://localhost:3000` in your browser.
