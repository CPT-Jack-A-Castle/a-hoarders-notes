#! /usr/bin/env bash

set -euo pipefail

function get_vaults() {
    # for dir in $(find . -type f -name '.dendron.cache.json' -print0 | xargs --null dirname); do
    #     echo "$dir";
    # done | paste -sd ' '
    jq -r .folders[].path < dendron.code-workspace | paste -sd ' '
}



# TODO: Determine vault directories and load them in automatically.

# for dir in $(find . -type f -name '.dendron.cache.json' -print0 | xargs dirname); do echo "$dir"; done | paste -sd ','
# nodemon -e yml,md -w vault "$(pwd)"/node_modules/.bin/dendron buildSite --stage dev --serve
# nodemon -e yml,md -w "$(get_vaults)" "$(pwd)"/node_modules/.bin/dendron buildSite --stage dev --serve
# nodemon -e yml,md "$(pwd)"/node_modules/.bin/dendron buildSite --stage dev --serve

# nodemon --watch vault --ext md,yml dendron-cli buildSite --wsRoot .dendron.ws --vault vault