# Scc::Codestyle

Shared Ruby style guide used by the SCC Team.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'scc-codestyle'
end
```

You do not need to include RuboCop directly in your application's dependencies. Scc::Codestyle will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  scc-codestyle:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You can also automatically generate a `.rubocop_todo.yml` file to temporarily ignore failing cops until the offenses are removed from your code base. Run:

```bash
$ bundle exec rubocop --auto-gen-config
```

And add this to `.rubocop.yml` below the previous block:

```yaml
inherit_from: .rubocop_todo.yml
```

### Development

Build the docker container with:

```bash
$ make build
```

And then enter in the container with:

```bash
$ make console
```
