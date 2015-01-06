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

  grunt.loadNpmTasks "grunt-contrib-sass"

  grunt.registerTask "convert", ["sass"]

  return