## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

Tracking and adding changes helps developers to fix, revise, modify, and develop a current model without jeopardizing it. They allow developers to compare changes, check to ensure that the changes will not create new problems or issues, and provide a log of changes for reference. 

A commit is a snapshot of the change a programmer requests to make in the master version. When leaving a commit message, it is best to use the imperative form of the verb, mimicking the verbs used in git commands. The HEAD^ refers to the commit one is currently on.

The three stages of git change are fork and cloning the master repository to create a remote user repository; creating a new branch to make changes, then add and commit the changes; push the changes from the new branch to the remote repository and make a pull request, which upon approval then merges into the master repository.
Git Commands:
-git clone [URL remote user repository]
-git checkout –b [branch name]
-git status (use this anytime to check where you are in the workflow)
-git add [file name]
-git commit –m “[commit message]”
-git checkout master
-git pull
-git checkout [branch name]
-git merge master
-git push origin [branch name]
-git checkout master
-git fetch origin master
-git merge origin/master

A pull request sends changes made to the remote repository to be submitted for merge, which would incorporate the change into the master version. To make a pull request, after the change has been pushed (“git push origin [branch]), go to remote repository  and click on “Pull Request”. Make sure the base fork includes user name. Then click on “Create Pull Request”. After the changes have been reviewed, click on “Merge Pull Request”. Then, click on “Delete branch” button.

Using pull requests are useful when working in a team setting because it allows for changes to be reviewed and checked by others for corrections, revisions, or feedback for additional changes. It encourages collaboration between team members.

