let swig = require('gulp-swig');
let gulp = require('gulp');
let browserSync = require('browser-sync').create();
let sass = require('gulp-sass');

gulp.task('templates',function(){
	gulp.src('./src/view/*.swig')
	.pipe(swig({
        defaults:{
            cache:false
        }
    }))
	.pipe(gulp.dest('./dist/view/'))
});


gulp.task('serve',['sass','templates'], function() {
    browserSync.init({
        server: {
            baseDir: 'dist/'
        },
        startPath:'/view/index.html'
    });

    gulp.watch("src/scss/*.scss", ['sass']);

    gulp.watch("src/view/**/*.swig", ['templates',browserSync.reload]);
});


gulp.task('sass', function () {

   return gulp.src("src/scss/*.scss")
        .pipe(sass())
        .pipe(gulp.dest("dist/css"))
        .pipe(browserSync.stream());
});

gulp.task('default', ['serve']);