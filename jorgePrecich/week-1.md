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

**Squash commits**

You can rewrite the history of the commits in git

*Example*
git commit --ammend **You can change the name of the commit, or the files edited, deleted, added or modified**
git rebase -i <commit> **Squash joins multiple commits on the same one**

*pick f7f3f6d changed my name a bit
squash 310154e updated README formatting and added blame
squash a5f4a0d added cat-file

Commands:
 p, pick = use commit
 e, edit = use commit, but stop for amending
 s, squash = use commit, but meld into previous commit

If you remove a line here THAT COMMIT WILL BE LOST.
However, if you remove everything, the rebase will be aborted*

**Staging interactive/patch**

*Pretty much the same as the last concept. Patch allows you to commit some lines in the same file to
modularize commits*

git rebase -i <commit>
git rebase -p <commit>

p, pick = use commit
r, reword = use commit, but edit the commit message
e, edit = use commit, but stop for amending
s, squash = use commit, but meld into previous commit
f, fixup = like "squash", but discard this commit's log message
x, exec = run command (the rest of the line) using shell

**Branch**

A branch is a parallel version of a repository. It is contained within the repository, but does not affect the primary or master branch allowing you to work freely without disrupting the "live" version. When you've made the changes you want to make, you can merge your branch back into the master branch to publish your changes. For more information, see "About branches."

**Git remote**

This is the version of something that is hosted on a server, most likely GitHub. It can be connected to local clones so that changes can be synced. You can add, delete and have more than one remote. For example to upload to GitHub and GitLab

git branch -r **Lists remote branches**
git remote **Lists remotes names**
git remote add <name> <url>
git remote rm <name> <url>

**Pulling commits from another branch**

Whenever you need individual or a set of commits you can `cherry-pick` the desired commits to your
branch.

git cherry-pick <commit> *You can select multiple commits divided by space*
git cherry-pick --continue
git cherry-pick --abort
git cherry-pick --quit

**Branch naming conventions**

1. Use grouping tokens (words) at the beginning of your branch names.
2. Define and use short lead tokens to differentiate branches in a way that is meaningful to your workflow.
3. Use slashes to separate parts of your branch names.
4. Do not use bare numbers as leading parts.
5. Avoid long descriptive names for long-lived branches.
