let swig = require('gulp-swig');
let gulp = require('gulp');
let browserSync = require('browser-sync').create();
let less = require('gulp-less');
let copy = require('gulp-contrib-copy');
let autoprefixer = require('autoprefixer'); 
let cssnano = require('cssnano');
let postcss = require('gulp-postcss');

gulp.task('templates',function(){
	gulp.src('./src/view/*.swig')
	.pipe(swig({
        defaults:{
            cache:false
        }
    }))
	.pipe(gulp.dest('./dist/view/'))
});


gulp.task('serve',['less','templates','copyJs','copyFt','copyImg'], function() {
    browserSync.init({
        server: {
            baseDir: 'dist/'
        },
        startPath:'/view/index.html'
    });

    gulp.watch("src/less/**", ['less']);

    gulp.watch("src/view/**/*.swig", ['templates',browserSync.reload]);

    gulp.watch("src/js/*.js", ['copyJs',browserSync.reload]);

    gulp.watch("src/fonts/*", ['copyFt']);
});


gulp.task('less', function () {

  let processors = [ autoprefixer({browsers:'last 2 version'})];

   return gulp.src("src/less/_custom/style-hg38.less")
        .pipe(less())
        .pipe(postcss(processors))
        .pipe(gulp.dest("dist/css"))
        .pipe(browserSync.stream());
   });

gulp.task('copyJs',function(){
    return gulp.src("src/js/**")
           .pipe(copy())
           .pipe(gulp.dest('dist/js/'))
});


gulp.task('copyImg',function(){
    return gulp.src("src/images/**")
           .pipe(copy())
           .pipe(gulp.dest('dist/images/'))
});

gulp.task('copyFt',function(){
    return gulp.src("src/fonts/**")
           .pipe(copy())
           .pipe(gulp.dest('dist/fonts/'))
});

gulp.task('default', ['serve']);