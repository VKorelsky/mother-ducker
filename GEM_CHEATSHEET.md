# Making a ruby gem, a cheatsheet

# Create a new gem

  - run `bundle gem name_of_new_gem`

# Modify a project to make it a gem

  - Folder structure (for terminal app)
    ```bash
      - bin/
        - executable #name of program when run on terminal
      - lib/
        - executable/ # folder which holds the code for the gem
            - version.rb # holds constant EXECUTABLE::VERSION
        - executable.rb # entry point for the app, file which loads other files
      - executable.gemspec
      - Rakefile
  ```

  - Rakefile
    ```ruby
      require "bundler/gem_tasks"
      task :default => :install
    ```
  - executable.gemspec (very basic version)
    ```ruby
      Gem::Specification.new do |gem|
          gem.name = 'executable'
          gem.summary = "summary"

          gem.version = "2.0.1"
          gem.files = Dir['lib/**/*']
          gem.executables = ["executable"]

          gem.author = ['author']
          gem.licenses = ['MIT']

          gem.add_development_dependency "bundler", "~> 1.16"
          gem.add_development_dependency "rake", "~> 10.0"
      end
    ```

# Command cheatsheet

 - with rake

 - build and install for testing

  ```bash
    $ rake install
  ```

 - release to the wider world

  ```bash
    $ rake release
  ```

- check if gem is published

  ```bash
    $ gem list -r executable
  ```

- if version tag is not updated

  ```bash
    $ gem yank executable -v VERSION
  ```

## Without rake

  - building the gem
    ```bash
      $ gem build executable.gemspec
    ```

  - pushing the gem
    ```bash
      $ gem push executable_created_from_build.gem
    ```

# Notes


 [guide](https://guides.rubygems.org/make-your-own-gem/),
 [other guide](http://robdodson.me/how-to-write-a-command-line-ruby-gem/)
