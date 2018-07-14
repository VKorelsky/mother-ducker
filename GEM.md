# Instructions for gem pushing

 - code goes in lib/
 - mother_ducker.gemspec # metainfo for gem

# cheatsheet

building the gem
```
  $ gem build mother_ducker.gemspec
```

pushing the gem
```
  $ gem push {file_created_from_build}.gem
```
 [guide](https://guides.rubygems.org/make-your-own-gem/)
