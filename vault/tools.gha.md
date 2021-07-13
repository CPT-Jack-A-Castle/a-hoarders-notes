---
id: rYXJnz807MckQc40Daiiu
title: GitHub Actions Tools
desc: ''
updated: 1626060349257
created: 1626060349257
---

## Actions

## peaceiris/actions-gh-pages

[peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)

> GitHub Actions for GitHub Pages rocket Deploy static files and publish your
> site easily. Static-Site-Generators-friendly.

## Snippets

### Make a Commit if Changes Are Staged

During CI if changes are made during the process -- such as when building a
static site -- the step below will commit them. They can then be pushed back to
the repo as your own user, but it's easier to use another action like:
[Github Push Action](https://github.com/ad-m/github-push-action).

`git diff-index --quiet HEAD` will return `0` if there aren't any changes
staged and a `1` if there are. The `||` will then trigger the `git commit`.

```yaml

- name: Commit files
  run: |
    git config --local user.email "action@github.com"
    git config --local user.name "GitHub Action"
    git add docs/
    git diff-index --quiet HEAD \
      || git commit -m "Build site."
```

----

## Collections

[[#github-actions|collections.gha]]
[[#github-pages|collections.github-pages]]