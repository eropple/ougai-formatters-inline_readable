# Ougai::Inline::Readable #

[Ougai][] is an amazing structured logger for Ruby. But its `Readable` formatter,
best used in development, is a little annoying because it spams out additional
structured data onto many lines. `Ougai::Inline::Readable` instead uses `#inspect`
to put your structured data on a single line.

## Usage ##
```ruby
require 'ougai'
require 'ougai/formatters/inline_readable'

logger = Ougai::Logger.new($stderr)
logger.formatter = Ougai::Formatters::InlineReadable.new

logger.info "This is a test message."
logger.debug msg: "This is a message with structured data.", foo: 5, bar: 10
```

And example output:

```
[2017-09-20T14:36:36.624-04:00] INFO: This is a test message. ({})
[2017-09-20T14:36:37.294-04:00] DEBUG: This is a message with structured data. ({:foo=>5, :bar=>10})
```

[Ougai]: https://github.com/tilfin/ougai
