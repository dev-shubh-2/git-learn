# Dev Container — Java Tomcat Web App

This devcontainer lets you run the JSP web app **directly in your browser** via GitHub Codespaces with zero local setup.

## 🚀 How to launch

1. Go to the repo on GitHub
2. Click the green **`Code`** button → **`Codespaces`** tab → **`New codespace`**
3. Wait ~2 minutes for the container to build and Tomcat to start
4. Codespaces will **automatically open port 8080** in your browser
5. Navigate to:
   - `index.jsp` → `https://<your-codespace-url>/WebApp_SK/index.jsp`
   - `home.jsp`  → `https://<your-codespace-url>/WebApp_SK/home.jsp`

## 🛠 What's inside

| Tool | Version |
|------|---------|
| Java | 17 (LTS) |
| Maven | Latest |
| Tomcat | 10 |

## 🔌 VS Code Extensions (auto-installed)

- **Language Support for Java** (Red Hat)
- **Java Extension Pack**
- **Maven for Java**
- **Tomcat for Java**
- **JSP Syntax Highlighter**

## 🔁 Rebuilding / redeploying

If you make changes to JSP files, redeploy with:

```bash
cd WebApp_SK
mvn clean package && sudo cp target/*.war /var/lib/tomcat10/webapps/
```
