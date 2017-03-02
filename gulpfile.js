let swig = require('gulp-swig');
let gulp = require('gulp');
let browserSync = require('browser-sync').create();
let less = require('gulp-less');
let copy = require('gulp-contrib-copy');

gulp.task('templates',function(){
	gulp.src('./src/view/*.swig')
	.pipe(swig({
        defaults:{
            cache:false
        }
    }))
	.pipe(gulp.dest('./dist/view/'))
});


gulp.task('serve',['less','templates'], function() {
    browserSync.init({
        server: {
            baseDir: 'dist/'
        },
        startPath:'/view/index.html'
    });

    gulp.watch("src/less/*.less", ['less']);

    gulp.watch("src/view/**/*.swig", ['templates',browserSync.reload]);

    gulp.watch("src/js/*.js", ['copyJs']);

    gulp.watch("src/fonts/*", ['copyFt']);
});


gulp.task('less', function () {

   return gulp.src("src/less/*.less")
        .pipe(less())
        .pipe(gulp.dest("dist/css"))
        .pipe(browserSync.stream());
});

gulp.task('copyJs',function(){
    return gulp.src("src/js/*")
           .pipe(copy())
           .pipe(gulp.dest('dist/js/'))
});


gulp.task('copyFt',function(){
    return gulp.src("src/fonts/*")
           .pipe(copy())
           .pipe(gulp.dest('dist/fonts/'))
});

gulp.task('default', ['serve']);