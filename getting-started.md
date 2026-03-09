# Getting Started with johnze.co.uk (Hugo Site)

This guide will help you spin up your Hugo site for local development and content editing. It also includes notes on common SSL certificate issues.

## Prerequisites
- [Hugo](https://gohugo.io/getting-started/installing/) (version 0.111.3 or higher recommended)
- Git Bash or a Unix-like shell (for running scripts)

## 1. Cloning the Repository
```
git clone <repo-url>
cd my-website/johnze.co.uk
```

## 2. Creating a New Post
Use the provided script:
```
./new-post.sh -t <type> -n "Post Title"
# Example:
./new-post.sh -t blog -n "test post"
```
Types: `blog`, `projects`, `ctf`

## 3. Running the Site Locally
```
hugo server -D
```
- Visit: http://localhost:1313
- The `-D` flag includes drafts.

## 4. SSL Certificate Issues
- **Local development with `hugo server` uses HTTP by default.**
- If you need HTTPS locally, you must:
  - Use a reverse proxy (like Caddy or nginx) with a self-signed or mkcert certificate.
  - Or, use [mkcert](https://github.com/FiloSottile/mkcert) to generate trusted local certs.
- **Expired SSL certs only affect production (Netlify, etc.), not local dev.**
- For Netlify: SSL is managed automatically. If you see expired certs, check your Netlify dashboard and re-provision the certificate.

## 5. Building for Production
```
hugo --gc --minify
```
- Output is in the `public/` directory (as set in `netlify.toml`).

## 6. Troubleshooting
- If you get SSL errors locally, try using HTTP (default) or set up mkcert.
- For Netlify SSL issues, re-deploy the site or check the Netlify dashboard.
- If `hugo` is not found, check your PATH or install the correct version.

---
For more details, see the README.md or [Hugo documentation](https://gohugo.io/documentation/).
