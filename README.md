marthur
=======

Markdown Author command line toolkit for writting ebooks.

## Installation

    $ gem install marthur

## Usage

Make a directory for where you want to write your book:

```bash
$ mkdir ebook && cd ebook
```

Create your first chapter file with a generated title:

```bash
$ marthur chapter "Intro"
```

Now go and write the content for your chapter:

```bash
$ vi chapter/intro.md
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
