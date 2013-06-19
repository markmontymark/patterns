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
			src: ['**/*.coffee'],
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
						requireConfig: {
							baseUrl: 'build/',
						}
					}
				}
			}
	}
  });

  grunt.registerTask('default', 'test');
  grunt.registerTask('build', 'coffee:src_compile');
  grunt.registerTask('buildtest', 'coffee:test_compile');
  grunt.registerTask('test', ['build','buildtest','jasmine:src']);
  grunt.registerTask('watch', ['coffee:dev','coffee:test','watch:all']);

};
