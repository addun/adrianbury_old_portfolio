var gulp = require('gulp'),
    concat = require('gulp-concat'),
    browserSync = require('browser-sync').create(),
    htmlreplace = require('gulp-html-replace');
var uglify = require('gulp-uglify');
var pump = require('pump');


gulp.task('concatJS', function () {
    return gulp.src([
        './javascripts/app.js',
        './javascripts/filters.js',
        './directives/*/*.js',
        './views/*/*.js'
    ])
        .pipe(concat('angular-app.js'))
        .pipe(gulp.dest('./javascripts/'));
});