========================================================================
Cookiecutter template for a scientific reserach project based on Python
========================================================================

Features
--------

* Testing setup with ``unittest`` and ``python setup.py test`` or ``pytest``
* Github actions for:
    * Automatic testing
    * Automatic bumping version and publish to PyPi for every push to master
    * Bulding Sphinx docs and a manuscript
* Command line interface using Click (optional)



How to use
----------

Step 1: Install cookiecutter
******************************

Install the latest Cookiecutter if you haven't installed it yet (this requires
Cookiecutter 1.4.0 or higher)::

    pip install -U cookiecutter




Step 2: Create your project
*****************************

Create your project from this template by running the following command and following the steps:

    cookiecutter https://github.com/.......

Step 3: Make a Github project
******************************

Setup your project on Github. Create a new project on Github, initialize your repo locally and push it.

Step 4: Install your project locally
***************************************

Navigate to your project directory. Install the development requirements:

    pip install -r requirements_dev.txt

Install your project locally by running:

    pip install -e .

Now you should be able to import your Python project in any directory on your system:

    >>> import yourprojectname


Step 5: If you chose to publish automatically to PyPi
*******************************************************

    * Make sure you have a user on https://pypi.org/. Create one if you need to.
    * Create an API-token for your PyPi-user at https://pypi.org/manage/account/
    * In your Github repository, go to Settings -> Secrets -> Actions and create a repository secret. Name it `PYPI_API_TOKEN` and paste in the API-token you created.
    * Try pushing to master. Check that the Github Action for publishing PyPi package ran without errors. If it succeeded, you will now be able to find your package published on PyPi.

Step 6: If you chose to automatically build documentation
*************************************************************

    * Go to Settings on your project on Github. Choose `Pages` and select `Deply from branch` under `Source`.
    * Select the `gh-pages` branch and the `docs` folder and click Save.
    * Make branch called `gh-pages` locally and push it. This will be the branch that Github uses to host the page and you will never use it locally:

        git branch gh-pages
        git push origin gh-pages

    * Make some arbitrary change in a file in the `docs_source` directory on your master branch and push the changes.
    * Check that the github action for making documentation ran successfully. If it did, you will be able to find your documentation on https://[organization].github.io/[project-name]


Step 7: Make a dev-branch
**************************

Make a dev-branch. The idea is that all changes are pushed and synced as often as possible to the dev branch and that
the master branch contains a more stable version of your project. Avoid creating too many other branches.

After making a dev-branch, push it to Github and check that the Github actions are running and not failing.
The Github actions are set up so that tests are run when changes are pushed to the dev-branch, and they will
publish a package and make documentation when changes are pushed to master.

