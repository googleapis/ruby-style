# Ruby Style Guide

## Installation

Run:

```bash
bundle add google-style --group development,test
```

Or, add this line to your Gemfile:

```ruby
group :test, :development do
  gem "google-style", "~> 1.24.0"
end
```

## Usage

Add the following to the top of your `.rubocop.yml`:

```yaml
inherit_gem:
  google-style: google-style.yml
```

And run:

```bash
bundle exec rubocop
```

## Versioning

For all `1.x.x` gem versions:

- The target and required Ruby version will match the minor gem version. `1.24.0` targets Ruby 2.4. When `1.25.0` is released, it will target Ruby 2.5, and `1.30.0` will target Ruby 3.0.

- During a minor version bump, the rubocop dependency will be updated to the latest version.

- For these reasons, it is highly recommended that dependencies specify at least a specific minor version of this gem.

## Contributing

Contributions to this library are always welcome and highly encouraged.

See the [Contributing
Guide](CONTRIBUTING.md)
for more information on how to get started.

Please note that this project is released with a Contributor Code of Conduct. By
participating in this project you agree to abide by its terms. See the [Code of
Conduct](CODE_OF_CONDUCT.md)
for more information.

## License

This library is licensed under Apache 2.0. Full license text is available in
[LICENSE](LICENSE).

## Supported Ruby Versions

These libraries are currently supported on Ruby 2.4+.

Google provides official support for Ruby versions that are actively supported
by Ruby Core—that is, Ruby versions that are either in normal maintenance or
in security maintenance, and not end of life. Currently, this means Ruby 2.4
and later. Starting with Ruby 2.4, minor releases of the google-style gem under
`1.x.x` will correspond with the required Ruby version, with `1.24.x` requiring
Ruby 2.4.
See https://www.ruby-lang.org/en/downloads/branches/ for details about the Ruby support schedule.
