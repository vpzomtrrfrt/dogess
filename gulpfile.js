var gulp = require('gulp');

var dogeify = require('gulp-dogescript');
var pegjs = require('gulp-pegjs');

gulp.task('compileDJS', function() {
	return gulp.src('src/**/*.djs')
	.pipe(dogeify())
	.pipe(gulp.dest('dist'));
});

gulp.task('compilePEG', function() {
	return gulp.src('src/**/*.pegjs')
	.pipe(pegjs({
		format: 'commonjs'
	}))
	.pipe(gulp.dest('dist'));
});

gulp.task('default', ['compileDJS', 'compilePEG']);
