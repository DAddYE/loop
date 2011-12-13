# Loop

A tiny Ruby program used to periodically execute a command.

## Usage

```
Usage: loop [options] <cmd>

Options:

  -i, --interval=val   Interval in seconds default to 0.5
  -v, --version        Display the version number
  -h, --help           Show this help message
```

## Installation

```
$ (sudo) gem install loop
```

## About

  This project is very a port of [watch(2)](https://github.com/visionmedia/watch) implemented by VisionMedia.

## Milliseconds resolution

 We support millisecond resolution i.e.:

```
$ watch -i 0.3 echo hey
```

## Examples

Here a simple script that compile `stylus` and `coffee` in `public` folder:

Create a folder in your `sinatra`/`padrino` app:

```sh
mkdir -p app/assets/js
mkdir -p app/assets/css
```

In js put your `coffee` script files and under css `stylus` stylesheets.

Be sure to install both:

```sh
npm -g install stylus coffee-script
```

In the root of your project create a `Makefile` with this content:

```make
COFFEE=$(shell find app/assets/js -name '*.coffee' -type f)
JS=$(patsubst app/assets/js/%.coffee, public/javascripts/%.js, $(COFFEE))
STYLUS=$(shell find app/assets/css -name '*.styl' -type f)

all: $(JS) public/stylesheets/app.css

public/javascripts/%.js: app/assets/js/%.coffee
	coffee -b -o public/javascripts -c $<

public/stylesheets/app.css: $(STYLUS)
	stylus -o public/stylesheets -c $<
```

Create some `*.styl` files and  `*.coffee` files under `app/assets`

Test it:

```sh
make
```

Now run loop:

```sh
loop make
```

More details are available here: https://github.com/visionmedia/watch/blob/master/Readme.md
