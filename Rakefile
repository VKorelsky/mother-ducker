require "bundler/gem_tasks"
task :default => :rubocop

desc "Look for style guide offenses in your code"
task :rubocop do
  sh "rubocop --format simple || true"
end
