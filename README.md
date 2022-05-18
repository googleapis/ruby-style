# Ruby Style Guide

## Installation

Run:

```bash
bundle add google-style --group development,test
```

Or, add this line to your Gemfile:

```ruby
group :test, :development do
  gem "google-style"
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

For all `1.x.y` gem versions, the target and required Ruby version will match
the minor gem version. Hence, `1.26.y` versions target and require Ruby 2.6.
`1.30.y` versions target and require Ruby 3.0, and so forth.

During a minor version bump, the rubocop dependency will be updated to the
latest version, and we will enable new checks up to and including that version.
Thus, code that passed using one minor version might not pass using the next.
Hence, dependencies should generally follow the pattern `~> 1.x.y` to pin to a
specific minor version.

## Contributing

Contributions to this library are always welcome and highly encouraged.

See the [Contributing Guide](CONTRIBUTING.md)
for more information on how to get started.

Please note that this project is released with a Contributor Code of Conduct. By
participating in this project you agree to abide by its terms. See the [Code of
Conduct](CODE_OF_CONDUCT.md) for more information.

## License

This library is licensed under Apache 2.0. Full license text is available in
[LICENSE](LICENSE).
