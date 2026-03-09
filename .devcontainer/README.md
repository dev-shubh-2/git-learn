# Dev Container — Java Tomcat Web App

Run the JSP web app **entirely in your browser** via GitHub Codespaces. No local Java or Tomcat install needed.

## 🚀 How to launch

1. Go to the repo on GitHub
2. Click **`Code`** → **`Codespaces`** → **`New codespace`**
3. Wait ~2 minutes — Maven will build the WAR and start an embedded Tomcat automatically
4. When port `8080` appears in the **Ports** panel, click **Open in Browser**
5. Navigate to:
   - Landing page → `https://<your-codespace>/WebApp_SK/index.jsp`
   - Home page   → `https://<your-codespace>/WebApp_SK/home.jsp`

## 🛠 How it works

| Step | What happens |
|------|--------------|
| `onCreateCommand` | `mvn clean package` — builds the WAR once |
| `postStartCommand` | `mvn tomcat7:run` — starts embedded Tomcat on port 8080 |

No `apt-get`, no `systemctl` — Tomcat runs **inside the Maven process** via the `tomcat7-maven-plugin`. This is the most reliable approach inside containers.

## 🔁 Hot-reload during development

The embedded Tomcat watches for changes. After editing a JSP file, just **refresh your browser** — no restart needed.

For Java class changes:
```bash
cd WebApp_SK && mvn tomcat7:run
```

## 📦 Stack

| Tool | Version |
|------|---------|
| Java | 17 (LTS) |
| Maven | Latest |
| Tomcat (embedded) | 7.x via maven plugin |
