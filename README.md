# crystal-json-key-mapper

A hack to make `JSON.mapping` by default map crystal underscore names to JSON camelcase names.

## Limitation

All field names in crystal classes should not have uppercase letters. (Only lowercase letters and underscores.)

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystal-json-key-mapper:
    github: liuyang1204/crystal-json-key-mapper
    branch: master
```

## Usage

require this at the very beginning of the application.

```crystal
require "json"
require "crystal-json-key-mapper"
```

## Contributors

- [liuyang1204](https://github.com/liuyang1204) Leon Liu - creator, maintainer
