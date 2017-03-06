let swig = require('gulp-swig');
let gulp = require('gulp');
let browserSync = require('browser-sync').create();
let less = require('gulp-less');
let copy = require('gulp-contrib-copy');
let autoprefixer = require('autoprefixer'); 
let cssnano = require('cssnano');
let postcss = require('gulp-postcss');
var plumber = require('gulp-plumber');




gulp.task('serve',['less','templates','copyJs','copyFt'], function() {
    browserSync.init({
        server: {
            baseDir: 'dist/'
        },
        startPath:'/view/index.html',
        // open:false
    });

    gulp.watch("src/less/**", ['less']);

    gulp.watch("src/view/**/*.swig", ['templates',browserSync.reload]);

    gulp.watch("src/js/**", ['copyJs',browserSync.reload]);

    gulp.watch("src/fonts/**", ['copyFt']);
    gulp.watch("src/images/**", ['copyImg']);
});


gulp.task('templates',function(){
  gulp.src('./src/view/*.swig')
  .pipe(plumber())
  .pipe(swig({
        defaults:{
            cache:false
        }
    }))
  .pipe(gulp.dest('./dist/view/'))
});


gulp.task('less', function () {

  let processors = [ autoprefixer({browsers:'last 2 version'}), cssnano ];

   return gulp.src(["src/less/yepcss-h5.less","src/less/_custom/style-hg38.less"])
        .pipe(plumber())
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


gulp.task('copyFt',function(){
    return gulp.src("src/fonts/**")
           .pipe(copy())
           .pipe(gulp.dest('dist/fonts/'))
});

gulp.task('copyImg',function(){
    return gulp.src("src/images/**")
           .pipe(copy())
           .pipe(gulp.dest('dist/images/'))
});

gulp.task('default', ['serve']);