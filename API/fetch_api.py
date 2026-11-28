#!/usr/bin/env python3
"""Fetch and display GitHub profile metadata using the GitHub REST API."""

import json
import os
import urllib.request

USERNAME = "aj1000-g"
API_URL = f"https://api.github.com/users/{USERNAME}"
FALLBACK_PATH = os.path.join(os.path.dirname(__file__), "github_profile.json")


def fetch_profile():
    try:
        req = urllib.request.Request(
            API_URL, headers={"User-Agent": "DeveloperPortfolio-API-Client"}
        )
        with urllib.request.urlopen(req, timeout=10) as resp:
            return json.loads(resp.read().decode("utf-8"))
    except Exception:
        with open(FALLBACK_PATH, "r", encoding="utf-8") as f:
            return json.load(f)


def main():
    data = fetch_profile()
    summary = {
        "name": data.get("name"),
        "repos": data.get("public_repos"),
        "followers": data.get("followers"),
        "joined": data.get("created_at"),
    }
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
