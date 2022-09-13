---
blog:
  author: Gabriel Braico Dornas
  image: https://i.imgur.com/H8Rzxh7.png
---

# Move GitHub issues between two repos

I recently had to move a whole lot of GitHub issues between two repos before disabling them on the original one. Turns out that we signed for a LFS storage from GitHub, but after some time we realized that it wasn't necessary anymore. To my surprise, the only way to disconnect my credit card was by deleting the whole repository as mentioned in the [GitHub documentation](https://docs.github.com/en/repositories/working-with-files/managing-large-files/removing-files-from-git-large-file-storage#:~:text=To%20remove%20Git%20LFS%20objects%20from%20a%20repository%2C%20delete%20and%20recreate%20the%20repository)

```yaml remark
type: primary
text: To remove Git LFS objects from a repository, delete and recreate the repository.
```

Well, not being able to purge old files from GitHub's LFS storage seems to me a terrible solution or at least a serious gotcha because when you delete a repository, any associated issues, stars, and forks are also deleted. I cannot believe that this is still the solution recommended by GitHub itself in 2022. 

The repository issues were exactly the point. We use issues to document the code and to discuss problems and solutions all the time. Lost this information would be nuclear for our project. After lots of research the best solution I've found was to create another empty repository, migrate all issues (including the closed ones) and pull the code from the original one. How? Well, using the GitHub CLI. I'll not focus on how to create a new GitHub repo and pull all the local code to it. Let's just focus on the bulk migration process.


The GitHub UI lets you migrate single issues like so:

```
gh issue transfer <issue ID> <destination repo>
```

But that would take hours if some of the repos had over a hundred issues (also my case). Combining it with a few shell pipes let us to:

```
gh issue list -s all -L 500 --json number | \
    jq -r '.[] | .number' | \
    xargs -I% gh issue transfer % https://github.com/<destination repo>
```

All this will do is grab the last 500 issues from the original repo and **transfer** them to yours `<destination repo>`. If you have to transfer more than 500 issues increase this value or just run it multiple times. **Paid attention because the command must be executed in the correct original repo directory**. 

So far so good after that I could purge my original repo and remove LFS storage from GitHub. **Be careful and remember that when you delete a repository stars and forks are also deleted, it wasn't my case but could be yours. If so, search for complementary solutions before blindly removing your repo.**

Enjoy