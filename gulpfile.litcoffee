
# Build process using [Gulp](http://gulpjs.com)

Load Gulp modules.

    gulp = require 'gulp' # main tool
    coffee = require 'gulp-coffee' # compile coffeescript
    uglify = require 'gulp-uglify' # minify javascript
    sourcemaps = require 'gulp-sourcemaps' # create source maps
    pump = require 'pump' # good error handling of gulp pipes
    shell = require 'gulp-shell' # run external commands

The only build task in this simple repository compiles the one source file,
with minification and source maps.

    gulp.task 'default', -> pump [
        gulp.src 'lwp-example-lean.litcoffee'
        sourcemaps.init()
        coffee bare : yes
        uglify()
        sourcemaps.write '.'
        gulp.dest '.'
    ]

Create "docs" task to build the documentation using
[MkDocs](http://www.mkdocs.org).  This requires that you have `mkdocs`
installed on your system.

    gulp.task 'docs', shell.task 'mkdocs build'

