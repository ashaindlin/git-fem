# test-master-rename

``` sh
$ git branch -m master mistress
$ git push origin mistress
$ #select new default on github: use API?
$ git push origin :master
$ git config branch.mistress.merge refs/heads/mistress
```
