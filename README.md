# about

`git-fem` is a shell script to make a GitHub-hosted git repo match the girl power/nb femme power aesthetic of the rest of your life by renaming your `master` branch to `mistress` in your local repo and the upstream on GitHub *and* making `mistress` the new default branch on GitHub.

> "what is this, some social justice bullshit?" - a man

yes

> "is this some kind of statement instead of something with real utility?" - a man

also yes

> "why do you break one of the most standard VCS conventions in history for the sake of censoring other peoples vernacular?" - a man

because feminism is more important than practical utility, duh!

# installation

``` bash
$ git clone https://github.com/ashaindlin/git-fem.git
$ cd git-fem
$ sudo make install
```

# usage

``` bash
$ cd existing-git-repo
$ git branch
  foo    xxxxxx A commit message
* master xxxxxx Another commit message
$ git-fem
# Enter GitHub credentials
$ git branch
  foo      xxxxxx A commit message
* mistress xxxxxx Another commit message
```

you can now optionally delete `master` upstream with `$ git push origin :master` but if other people pull from your repo and you don't tell them you've done this, they may become very angry.
