guard-readme-on-github
======================

See how your README will look on GitHub without having to push!

Currently, it only handles markdown'ed READMEs titled "README.md" or "README.markdown" (case-insensitive).

Installation
------------

Use bundler. This gem depends on `guard`, so make sure that's in your Gemfile as well:

Gemfile:

<pre>
group :development do
  gem 'guard
  gem 'guard-readme-on-github'
end
</pre>

Then run:

<pre>
bundle
</pre>

Setup
-----

As with any other guard plugin, use the init command:

<pre>
[bundle exec] guard init # necessary only the first time you set up guard
[bundle exec] guard init readme-on-github
</pre>

Usage
-----

Make sure guard is running:

<pre>
guard
</pre>

Modify your README (or just touch the modified-at flag) and view it in your browser:

<pre>
open /tmp/markdown-preview.html
</pre>

Author
------

* [Bradley Grzesiak](https://github.com/listrophy) - [Bendyworks](http://bendyworks.com)
