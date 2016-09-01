autoprefixer = require 'autoprefixer'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(manifest: 'assets/js/manifest.yml', out: 'js/build.js'),
    #js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.scss', out:'css/site.css')
  ]

  scss:
    includePaths: [
      './assets/css/vendor'
      './node_modules/'
      './bower_components'
    ]
    outputStyle: 'nested'
    sourceMap: true
    sourceMapEmbed: true

  postcss:
    use: [
      autoprefixer
    ]

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
