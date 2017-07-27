# Scc::Codestyle

Shared Ruby style guide used by the SCC Team.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'scc-codestyle'
end
```

And then execute:

    $ bundle

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

You do not need to include RuboCop directly in your application's dependencies. Scc::Codestyle will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.
