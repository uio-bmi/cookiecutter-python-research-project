#!/bin/bash
if [ "{{cookiecutter.run_shell_script }}" = "y"  ]
then
    git init
    git add *
    git add .github/
    git add .gitignore
    git commit -m 'initial commit'
    gh repo create {{cookiecutter.project_slug}} --public --source=. --remote=origin
    git push --set-upstream origin master
    git checkout -b gh-pages
    git push origin gh-pages
    git checkout -b dev
    git push --set-upstream origin dev
    pip install -e .
    pip install -r requirements_dev.txt
    cat .automatic_documentation.rst
    read tmp
    git checkout master
    git merge dev
    git push --set-upstream origin master
    echo "Check that the github action for making documentation ran successfully. If it did, you will be able to find your documentation on https://{{cookiecutter.github_username}}.github.io/{{cookiecutter.project_slug}}"
fi

