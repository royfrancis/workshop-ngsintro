# workshop-ngsintro [![gh-actions-build-status](https://github.com/royfrancis/workshop-ngsintro/workflows/web-build/badge.svg)](https://github.com/royfrancis/workshop-ngsintro/actions?workflow=web-build)

This repo contains the course material for NBIS workshop **Introduction to Bioinformatics using NGS data**. The rendered view of this repo is available [here](https://royfrancis.github.io/workshop-ngsintro/).

## Repo organisation

The source material is located on the *master* branch (default). The rendered material is located on the *gh-pages* branch. For most part, one only needs to update content in master. Changes pushed to the *master* branch is automatically rendered to the *gh-pages* branch.

## Contributing

To add or update contents of this repo (for collaborators), first clone the repo.

```
git clone https://github.com/royfrancis/workshop-ngsintro.git
```

Make changes/updates as needed. Add the changed files. Commit it. Then push the repo back.

```
git add .
git commit -m "I did this and that"
git push origin
```

If you are not added as a collaborator, first fork this repo to your account, then clone it locally, make changes, commit, push to your repo, then submit a pull request to this repo.

**It is recommended that you do not push changes too frequently as it take a while to render.**

## Rendering

The website is automatically rendered by [GitHub Actions](https://help.github.com/en/actions) whenever a change is pushed. **DO NOT** push any rendered material such as `slide_topic.html`, `lab_topic.html` or supporting directories `slide_topic_files`, `lab_topic_files` etc to GitHub.

For local rendering, run `rmarkdown::render_site()` in the project directory. This renders all .Rmd and .md files to generate the HTML files and all other necessary files (including the assets, images and data directories) and moves them all into a directory specified under `output_dir` in **`_site.yml`**. Open `output_dir/index.html` to start. Remove this directory after use. **DO NOT** commit and push this output directory to GitHub.

You can also run `rmarkdown::render("bla.Rmd")` on individual .Rmd/.md files. This is a time-saver as the whole website need not be rendered just to preview this one file.

---

**2020** NBIS • SciLifeLab
