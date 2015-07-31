# Karma configuration
module.exports = (config) ->

    config.set
        basePath: ''

        frameworks: ['jasmine']

        files: [
            # External dependencies.
            'app/bower_components/fuzzy-search/lib/fuzzy.js'
            'app/bower_components/jquery/dist/jquery.js'
            'app/bower_components/flatstrap/assets/js/bootstrap-typeahead.js'

            # Dev dependencies.
            'app/bower_components/jasmine-jquery/lib/jasmine-jquery.js'

            # Fixtures
            {pattern: 'test/fixtures/*.html'}
            {pattern: 'test/fixtures/*.json', included: false}

            # SUT
            'app/scripts/*.coffee'

            # Test
            'test/*.spec.coffee'
        ]

        preprocessors:
            # **Caveat**. `.coffee` files processed by `coverage`
            # should not be processed by `coffee`.
            # https://github.com/karma-runner/karma-coverage/pull/19#issuecomment-29186243
            'app/scripts/*.coffee': ['coverage']
            'test/*.spec.coffee': ['coffee']
            'test/fixtures/*.html': ['html2js']

        # possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
        reporters: ['dots', 'coverage']

        # configure the reporter
        coverageReporter:
            instrumenters:
                ibrik: require('ibrik')
            instrumenter:
                '**/*.coffee': 'ibrik'
            reporters: [{
                    type: 'text-summary'
                    dir: 'coverage/'
                },
                {
                    type: 'lcovonly'
                    dir: 'coverage/'
                }
            ]

        port: 9876

        colors: true

        # possible values: config.LOG_DISABLE || config.LOG_ERROR ||
        # config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
        logLevel: config.LOG_INFO

        # enable / disable watching file and executing tests whenever any file changes
        autoWatch: false


        # Start these browsers, currently available:
        # - Chrome
        # - ChromeCanary
        # - Firefox
        # - Opera
        # - Safari (only Mac)
        # - PhantomJS
        # - IE (only Windows)
        browsers: ['PhantomJS']

        # If browser does not capture in given timeout [ms], kill it
        captureTimeout: 60000

        # Continuous Integration mode
        # if true, it capture browsers, run tests and exit
        singleRun: true
