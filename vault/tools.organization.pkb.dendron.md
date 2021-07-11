---
id: nQeZ9Z8qdrslc_a_eBFHg
title: Dendron
desc: ''
updated: 1626041256187
created: 1626041256187
---

## Publishing

### Github

Essentially the same as the notes in the [Dendron wiki](https://wiki.dendron.so/notes/230d0ccf-5758-4a8f-b39b-3b68e1482e2b.html).

1. Create a user site following the guide on [Github](https://pages.github.com/).
2. If one doesn't already exist, create a new repository on Github for your Dendron notes.
3. Push your files up to the repository.
4. Enable Github Pages for the repository using the `main` branch and the `docs` directory.
5. Copy the site URL that it shows after you save. It should look something like: `https://mkell43.github.io/a-hoarders-notes/`.
6. Edit the `dendron.yml` file adding the key `site.siteUrl` with the hostname of your site. For example, if the site URL that Github showed you when enabling Github Pages is `https://mkell43.github.io/a-hoarders-notes/` then the value for `site.siteUrl` would be: `https://mkell43.github.io`. See the example `dendron.yml` below.
7. Add the path in the site URL that Github provided when enabling Github Pages to the `site.assetsPrefix` key in your `dendron.yml` file. For example, if the site URL they provided was `https://mkell43.github.io/a-hoarders-notes/` then the value for `site.assetsPrefix` would be: `a-hoarders-notes`. See the example `dendron.yml` below.
8. Using the VSCode Command Pallette (`cmd/ctrl + shift + p`) run the `Dendron: Site Build` command.
9. Git add, commit, and push your repository up to Github.

#### Example dendron.yml

```yaml
version: 1
vaults:
    -
        fsPath: vault
useFMTitle: true
useNoteTitleForLink: true
noAutoCreateOnDefinition: true
noLegacyNoteRef: true
noXVaultWikiLink: true
lookupConfirmVaultOnCreate: false
autoFoldFrontmatter: true
journal:
    dailyDomain: daily
    name: journal
    dateFormat: y.MM.dd
    addBehavior: childOfDomain
    firstDayOfWeek: 1
site:
    copyAssets: true
    siteHierarchies:
        - root
    siteRootDir: docs
    usePrettyRefs: true
    title: A Hoarders Notes
    description: Personal knowledge space
    siteUrl: https://mkell43.github.io
initializeRemoteVaults: true
```
