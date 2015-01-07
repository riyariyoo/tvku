module.exports = (grunt) ->

  pkg = grunt.file.readJSON("package.json")

  grunt.initConfig

    pkg: pkg

    sass:
      dist:
        options:
          style: "expanded"
          compass: on
          noCache: on
        files:
          "assets/css/main.css": "assets/scss/main.scss"

    cssmin:
      target:
        files:
          "assets/css/main.min.css": "assets/css/main.css"

  grunt.loadNpmTasks "grunt-contrib-sass"
  grunt.loadNpmTasks "grunt-contrib-cssmin"

  grunt.registerTask "convert", ["sass", "cssmin"]

  return