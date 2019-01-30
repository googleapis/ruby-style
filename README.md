# Google-Style-Ruby

This repository contains a template you can use to seed a repository for a
new open source project.

See go/releasing (available externally at
https://opensource.google.com/docs/releasing/) for more information about
releasing a new Google open source project.

This template uses the Apache license, as is Google's default.  See the
documentation for instructions on using alternate license.

## Installation

Run:

```bash
bundle add rspec --group development,test
```

Or, add this line to your Gemfile:

```ruby
group :test, :development do
  gem 'google-style'
end
```

## Usage

Add the following to the top of your `.rubocop.yml`:

```yaml
inherit_gem:
  google-style:
    - rubocop.yml
```

And run:

```bash
bundle exec rubocop
```

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

These libraries are currently supported on Ruby 2.3+.

Google provides official support for Ruby versions that are actively supported
by Ruby Core—that is, Ruby versions that are either in normal maintenance or
in security maintenance, and not end of life. Currently, this means Ruby 2.3
and later. Older versions of Ruby _may_ still work, but are unsupported and not
recommended. See https://www.ruby-lang.org/en/downloads/branches/ for details
about the Ruby support schedule.
