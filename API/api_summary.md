# REST API Interaction Summary

## 1. What is a REST API?
A REST API (Representational State Transfer Application Programming Interface) is a standardized web interface that allows two software systems to communicate over HTTP. Clients send structured requests (such as `GET` to retrieve resources or `POST` to submit data) to specific endpoint URLs, and servers return responses—typically formatted in lightweight JSON—along with an HTTP status code indicating the outcome.

## 2. HTTP Status Codes Observed
- **200 OK:** Observed when requesting `https://api.github.com/users/aj1000-g` and `https://jsonplaceholder.typicode.com/posts`. It means the request succeeded and the server returned the requested JSON payload.
- **404 Not Found:** Observed when requesting a non-existent endpoint such as `https://api.github.com/users/nonexistent-user-xyz-999999`. It means the server could not find the requested resource at that URL.

## 3. `jq` Filter Used and Breakdown
The following `jq` command was used to extract key fields from `API/github_profile.json`:

```bash
cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
```

- `{ ... }` constructs a new JSON object containing only the selected fields.
- `name:.name` reads the top-level `.name` property from the input JSON and assigns it to the key `name`.
- `repos:.public_repos` maps the `.public_repos` integer count to a shorter key named `repos`.
- `followers:.followers` extracts the `.followers` count into the `followers` key.
- `joined:.created_at` extracts the account creation timestamp `.created_at` into the `joined` key.
