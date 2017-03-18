let swig = require('gulp-swig');
let gulp = require('gulp');
let browserSync = require('browser-sync').create();
let less = require('gulp-less');
let copy = require('gulp-contrib-copy');
let autoprefixer = require('autoprefixer');
let cssnano = require('cssnano');
let postcss = require('gulp-postcss');
let plumber = require('gulp-plumber');
let imageisux = require('gulp-imageisux');
let gulpif = require('gulp-if');
let uglify = require('gulp-uglify');
let minimist = require('minimist');
let htmlmin = require('gulp-htmlmin');
let knownOptions = {
  string: 'env',
  default: { env: process.env.NODE_ENV || 'production' }
};

let options = minimist(process.argv.slice(2), knownOptions);

let isProduction = options.env === 'production';

gulp.task('serve',['less','templates','copyJs','copyFt'], function() {
    browserSync.init({
        server: {
            baseDir: 'dist/'
        },
        startPath:'/view/index.html',
        // open:false
    });

    gulp.watch("src/less/*.less", ['less']);

    gulp.watch("src/view/**/*.swig", ['templates',browserSync.reload]);

    gulp.watch("src/js/**", ['copyJs',browserSync.reload]);

    gulp.watch("src/fonts/**", ['copyFt']);
    gulp.watch("src/images/**", ['imageisux']);
});


gulp.task('templates',function(){
  gulp.src('./src/view/*.swig')
  .pipe(plumber())
  .pipe(swig({
        defaults:{
            cache:false
        }
    }))
  .pipe(gulpif(isProduction,htmlmin({collapseWhitespace: true})))
  .pipe(gulp.dest('./dist/view/'))
});

 
  

gulp.task('less', function () {

 let processors = [ autoprefixer({browsers:'last 2 version'})];
  if(isProduction){
    processors.push(cssnano);
  }

   return gulp.src(["src/less/common.less","src/less/index.less"])
        .pipe(plumber())
        .pipe(less())
        .pipe(postcss(processors))
        .pipe(gulp.dest("dist/css"))
        .pipe(browserSync.stream());
   });

gulp.task('copyJs',function(){
    return gulp.src("src/js/**")
           .pipe(gulpif(isProduction,uglify(),copy()))
           .pipe(gulp.dest('dist/js/'))
});


gulp.task('copyFt',function(){
    return gulp.src("src/fonts/**")
           .pipe(copy())
           .pipe(gulp.dest('dist/fonts/'))
});



gulp.task('imageisux', function() {
    return gulp.src('src/images/**')
               .pipe(imageisux("dist/images/",true));
});

gulp.task('default', ['serve']);

gulp.task('build',['templates','less','copyJs','imageisux']);
