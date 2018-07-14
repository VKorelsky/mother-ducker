# Instructions for gem pushing

 - code goes in lib/
 - mother_ducker.gemspec # metainfo for gem

# cheatsheet

 - with rake

 - build and install for testing
  ```
    $ rake install
  ```

 - release to the wider world

  ```
    $ rake release
  ```

- check if gem is published

```
  $ gem list -r motherducker
```

- if version tag is not updated

  ```
    $ gem yank motherducker -v VERSION
  ```

## outdated
- manually

  building the gem
  ```
    $ gem build mother_ducker.gemspec
  ```

  pushing the gem
  ```
    $ gem push {file_created_from_build}.gem
  ```

# notes

 - version can be hardcoded into the gemspec, will need to be bumped up as we go


 [guide](https://guides.rubygems.org/make-your-own-gem/)
 [another, better guide](http://robdodson.me/how-to-write-a-command-line-ruby-gem/)
