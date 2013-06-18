module.exports = function(grunt) {
var path = require('path');

  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-jasmine');


  grunt.initConfig({
    coffee:{
		src_compile: {
			expand: true,
			flatten: false,
			cwd: 'src',
			// uncomment when all files compile src: ['**/*.coffee'],
			src: ['Creational/Singleton/*.coffee'],
			dest: 'build',
			ext: '.js'
	  },
		test_compile: {
			expand: true,
			flatten: false,
			cwd: 'test',
			src: ['**/*.coffee'],
			dest: 'build-test',
			ext: '.js'
	  }
    },
    watch:{
      all:{
        files:['src/*.coffee', 'test/*.coffee'],
        tasks:['build','buildtest']
      }
    },
		
	jasmine : {
        src: {
            src: [
                'build/**/*.js',
            ],
            options: {
					specs: 'build-test/**/*.js',
					junit: { path: 'testresults' },
					template: require('grunt-template-jasmine-requirejs'),
					templateOptions: {
						//requireConfigFile: 'src/main.js',
						requireConfig: {
							baseUrl: './',
							//paths: { "jquery": "path/to/jquery" },
							shim: {
								/*
								'foo': {
									deps: ['bar'],
									exports: 'Foo',
									init: function (bar) {
										return this.Foo.noConflict();
									}
								}
								*/
							},
							//deps: ['jquery']
						  // do initialization stuff
							  /*
							callback: function($) {

							}
							  */
						}
					}
				}
			}
	}
  });

  grunt.registerTask('default', 'jasminetest');
  grunt.registerTask('build', 'coffee:src_compile');
  grunt.registerTask('buildtest', 'coffee:test_compile');
  grunt.registerTask('test', ['build','buildtest','jasmine:src']);
  grunt.registerTask('watch', ['coffee:dev','coffee:test','watch:all']);

};
