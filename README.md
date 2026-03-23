# GPT League Scoring

This repo holds Jsonnet race configs for the GPT league. Standings are computed automatically via GitHub Actions whenever configs change.

## How It Works

1. Fork or branch this repo
2. Edit a config under `configs/` (or propose a new one)
3. Open a pull request targeting `main`
4. The **Compute Standings** workflow runs automatically and uploads the results as an artifact

## Viewing Results

After a workflow run completes:

1. Go to the **Actions** tab in this repo
2. Click the relevant **Compute Standings** run
3. Scroll to **Artifacts** at the bottom of the summary page
4. Download the **standings** zip — it contains the HTML standings tables

Artifacts are retained for 30 days.

## Secrets Setup (repo admins)

The scoring tool requires API credentials. A repo admin must add the following secrets under **Settings → Secrets and variables → Actions**:

| Secret name | Description |
|---|---|
| `CLIENT_TOKEN` | API token |
| `CLIENT_SECRET` | API client secret |
| `CLIENT_USERNAME` | API username |
| `CLIENT_PASSWORD` | API password |

Once these are set, the workflow will pick them up automatically on every run.
