# GitHub Stats Dashboard

This project is a simple dashboard for visualizing GitHub statistics, consisting of a Ballerina backend and an HTML frontend.

## Project Structure

```
Backend/
  github/
    main.bal
    Ballerina.toml
    Dependencies.toml
Frontend/
  dashboard.html
```

## Prerequisites
- [Ballerina](https://ballerina.io/downloads/) (for backend)
- Web browser (for frontend)

## Running the Backend
1. Install Ballerina and ensure the `bal` command is available in your terminal.
2. Open a terminal and navigate to the backend directory:
   ```sh
   cd Backend/github
   ```
3. Run the backend service:
   ```sh
   bal run main.bal
   ```
   This will start the backend server.

## Running the Frontend
1. Open `Frontend/dashboard.html` in your web browser.
2. Make sure the backend is running and accessible if the dashboard fetches data from it.

## Notes
- If you encounter `command not found: bal`, install Ballerina and add it to your PATH.
- Adjust backend or frontend code as needed for your environment.
