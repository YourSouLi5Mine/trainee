**Git**

Git is an open source program for tracking changes in text files, and is the core technology that GitHub, the social and user interface, is built on top of.

**.gitignore**

Specifies intentionally untracked files to ignore

*Example*
node_modules/
.git

**Commits**

A commit, or "revision", is an individual change to a file (or set of files). It's like when you save a file, except with Git, every time you save it creates a unique ID (a.k.a. the "SHA" or "hash") that allows you to keep record of what changes were made when and by who. Commits usually contain a commit message which is a brief description of what changes were made.

*Example*
git commit 
git commit -m "messageName"

*Check commit history*
git log
git log --oneline
git log --graph

**Moving around commits**

It allows you to move into the history of the files.

*Example*
git checkout SHA1

**Undo a commit**

We are humans, and we make mistakes so... this is a MUST to be able to undo a commit.

*Example*
git reset --soft HEAD~{#}|SHA1 **Files stay the same as just before making the commit**
git reset --mixed <commit> **Let's you decide between --soft and --hard interactively**
git reset --hard <commit> **Files stay as the prev commit from the one you selected. The
opposite from soft**
git revert <commit> **Delete commit changes in a new commit to don't lose the prev commits**
