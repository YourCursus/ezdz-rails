# Ezdz-Rails

This Gem integrates [Jay Salvat's Ezdz](https://github.com/jaysalvat/ezdz)
to the Rails assets pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'ezdz-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ezdz-rails

## Usage

This gem uses a Rails Engine to make Ezdz's assets available to you.

Require the JavaScript files from your `application.js` or wherever needed using:

```
//= require jquery.ezdz
```

Require the CSS files from your `application.scss` or wherever needed using:

```
*= require jquery.ezdz
```

## Gem release

In the case you'd like to create a new release when [Jay Salvat](https://github.com/jaysalvat) release a new version of his ezdz library, you just need to run the following:

```
$ ./make_new_release.sh
Ensuring Docker image zedtux/ezdz-rails exists ...
Updating library code to version 0.2.0 ...
Downlading ezdz-slider 0.2.0 ...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 11471  100 11471    0     0   1977      0  0:00:05  0:00:05 --:--:--  2673
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  2100  100  2100    0     0   6389      0 --:--:-- --:--:-- --:--:--  6382
Done!
Committing new version ...
Releasing gem ...
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
