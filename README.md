# Setup

1. Install Ruby 3.1.2 (Check out https://github.com/rbenv/rbenv)
2. Ensure 3.1.2 is the current ruby version `ruby --version` (If he build step of the install fails, try updating x-code if on mac)
3. Run `bin/setup` to install dependencies
4. Run `bundle exec rspec spec/` to run all tests
5. Run `ruby lib/main.rb` to execute the code in `lib/main.rb`

## Example Commands

Install dependencies

```
bin/setup

bundle install
+ bundle install
Using rake 13.0.6
Using bundler 2.3.23
Using diff-lcs 1.5.0
Using rspec-support 3.12.0
Using rspec-core 3.12.0
Using rspec-expectations 3.12.1
Using rspec-mocks 3.12.1
Using rspec 3.12.0
Bundle complete! 2 Gemfile dependencies, 8 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.

# Do any other automated setup that you need to do here
```

Run tests

```
rspec spec

Hello
  can run tests
  can say hello
  can say bye

Finished in 0.00145 seconds (files took 0.07264 seconds to load)
3 examples, 0 failures
```

Run a ruby file

```
ruby lib/main.rb
Hello, World!
Hello Ed
```

# Notes

Gemfile

- There is a Gemfile and Gemfile.lock file
- In Ruby, packages are called gems and the Gemfile is used to specify your dependencies
- When dependencies are installed (`bin/setup`), the gems are downloaded, and the Gemfile.lock is updated to encode the current state of the dependencies
- This is similar to NPM and package.json in the Node ecosystem
