# source-sans-pro-rails [![Gem Version](https://badge.fury.io/rb/source-sans-pro-rails.png)](http://badge.fury.io/rb/source-sans-pro-rails) [![Build Status](https://travis-ci.org/veracross/source-sans-pro-rails.png)](https://travis-ci.org/veracross/source-sans-pro-rails)

Adds [Adobe's Source Sans Pro font](https://github.com/adobe/source-sans-pro) to Rails via the asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'source-sans-pro-rails'

And then execute:

    $ bundle

## Usage

If you want to include all of the font weight variations, simply add this to `application.css`:

    /*
     *= require source-sans-pro
     */

You can also load just the font variants that are interesting to you. They are in the `source-sans-pro` directory, so just change the above line to:

    /*
     *= require source-sans-pro/regular
     *= require source-sans-pro/bold
     */

And so forth. Currently, the supported font variants are:

* Regular (`regular`)
* Italic (`italic`)
* Light (`light` - font weight 300)
* Extra Light (`extralight` - font weight 100)
* Semibold (`semibold` - font weight 600)
* Bold (`bold`)
* Black (`black` - font weight 800)

## Building

TTF font files were downloaded from Adobe and converted to `woff`, `eot`, and `svg` with [Font Squirrel's web font generator](http://www.fontsquirrel.com/tools/webfont-generator).

## License

* The Adobe Source Sans Pro font is licensed under the [SIL Open Font License](http://scripts.sil.org/OFL)
* This project is licensed under the MIT License.

## Thanks

* Adobe for open sourcing this font
* [font-awesome-rails](https://github.com/bokmann/font-awesome-rails) for a good example of creating a font gem for the asset pipeline

