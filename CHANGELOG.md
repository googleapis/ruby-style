# Release History

### 1.30.0 (2024-04-24)

#### Features

* Require Ruby 3.0 and support new checks as of Rubocop 1.63 ([#74](https://github.com/googleapis/ruby-style/issues/74)) 

### 1.27.1 (2024-01-20)

#### Bug Fixes

* Disable anonymous argument forwarding requirement ([#71](https://github.com/googleapis/ruby-style/issues/71)) 

### 1.27.0 (2023-09-13)

#### Features

* Require Ruby 2.7 and support new checks as of Rubocop 1.56 ([#64](https://github.com/googleapis/ruby-style/issues/64)) 

### 1.26.3 (2023-02-09)

#### Bug Fixes

* Disable Lint/Debugger for samples ([#60](https://github.com/googleapis/ruby-style/issues/60)) 

### 1.26.2 (2022-12-08)

#### Bug Fixes

* Disable Style/RegexpLiteral ([#58](https://github.com/googleapis/ruby-style/issues/58)) 

### 1.26.1 (2022-06-27)

#### Bug Fixes

* Updates for Rubocop 1.31 ([#54](https://github.com/googleapis/ruby-style/issues/54)) 

### 1.26.0 (2022-05-27)

#### Features

* Require Ruby 2.6 and support new checks as of Rubocop 1.30

### 1.25.3 (2022-05-06)

#### Bug Fixes

* Pin rubocop to 1.28.x for Ruby 2.5 compatibility

### 1.25.2 (2021-09-23)

* Disable Style/RedundantBegin

### 1.25.1 / 2021-02-09

* Add rubocop 1.9 cops and disable a few others
* Fix crash on extension checking, and eliminate new cop warning

### 1.25.0 / 2021-01-27

* pin rubocop version to 1.x, set min ruby to 2.5, enable new cops

### 1.24.0 / 2019-08-08

* Set required ruby version to 2.4
* Set rubocop dependency to ~> 0.74.0

### 0.3.1 / 2019-06-12

* Fix file permissions

### 0.3.0 / 2019-05-06

* Enforce expanded for Style/EmptyMethod
* Allow parentheses in chaining for Style/MethodCallWithArgsParentheses
* Enforce brackets for Style/WordArray and Style/SymbolArray

### 0.2.0 / 2019-03-13

* Set TargetRubyVersion to 2.3 
* Disable Style/FrozenStringLiteralComment
* Enable Metrics/ClassLength

### 0.1.0 / 2019-03-07

* Initial release
