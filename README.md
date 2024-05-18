# Branch archtecture

`utils`

- This is a branch for storing files that are useful but should not be submitted. 

- For example, .gitignore, README.md, testcode.

`main`

- store files to be submitted.

# Usage

## Set up

```
git clone git@github.com:tsukasakop/42-repo-template.git
git remote rename origin ${url_to_push}
```

## Copy files to main

```
git switch main
git checkout utils -- .
mv {,.}gitignore
git restore --staged .
```

## Push branch

```
git checkout main
git push submit main
git checkout utils
git push submit utils
```
