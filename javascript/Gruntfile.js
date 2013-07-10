module.exports = function(grunt) {
var path = require('path');

  grunt.loadNpmTasks('grunt-contrib-jasmine');

  grunt.initConfig({
	jasmine : {
        src: {
            src: [
                'src/**/*.js',
            ],
            options: {
					specs: 'test/**/*.js',
					junit: { path: 'testresults' },
					template: require('grunt-template-jasmine-requirejs'),
					templateOptions: {
						requireConfig: {
							baseUrl: 'src/',
						}
					}
				}
			}
	}
  });

  grunt.registerTask('default', 'test');
  grunt.registerTask('test', ['jasmine:src']);

};
