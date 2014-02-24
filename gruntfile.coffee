module.exports = (grunt)->

    grunt.initConfig(
        pkg: grunt.file.readJSON('package.json')

        cfg: {
            path: {
                src: "frontend/src"
                build: "frontend/build"
                dist: "webapp"
                test: "frontend/test"
            }
        }

        clean: {
            build: ["<%= cfg.path.build %>"]
            options: {
                force: true
            }
            htmls: {
                src: "public/*.html"
            }
            dist: {
                files: [
                    {
                        expand: true
                        cwd: "<%= cfg.path.dist %>"
                        src: ["**/*"]
                        dot: true
                    }
                ]
            }
        }

        coffee: {
            compile: {
                files: [
                    {
                        expand: true
                        cwd: "<%= cfg.path.src %>/script"
                        src: ["**/*.coffee"]
                        dest: "<%= cfg.path.build %>/script"
                        ext: ".js"
                    }
                ]
            }
        }

        less: {
            build: {
                options: {
                    compress: true
                }
                files: [
                    {
                        expand: true
                        cwd: "<%= cfg.path.src %>/style"
                        src: ["**/*.less", "!**/*.mixin.less"]
                        dest: "<%= cfg.path.build %>/style"
                        ext: ".css"
                    }
                ]
            }
        }

        copy: {
            htmls: {
                files: [
                    {
                        expand: true
                        cwd: "<%= cfg.path.src %>/htmls"
                        src: ["**/*"]
                        dest: "<%= cfg.path.build %>/htmls"
                    }
                ]
            }
            images: {
                files: [
                    {
                        expand: true
                        cwd: "<%= cfg.path.src %>/images"
                        src: ["**/*"]
                        dest: "<%= cfg.path.build %>/images"
                    }
                ]
            }
            modules: {
                files: [
                    {
                        expand: true
                        cwd: "<%= cfg.path.src %>/modules"
                        src: ["**/*"]
                        dest: "<%= cfg.path.build %>/modules"
                    }
                ]
            }
            views: {
                files: [
                    {
                        expand: true
                        cwd: "<%= cfg.path.src %>/views"
                        src: ["**/*"]
                        dest: "<%= cfg.path.build %>/views"
                    }
                ]
            }
            build: {
                files: [
                    {
                        expand: true
                        cwd: "<%= cfg.path.build %>"
                        src: ["**/*"]
                        dest: "<%= cfg.path.dist %>"
                    }
                ]
            }
        }

    )

    require('load-grunt-tasks')(grunt)
    # grunt.loadNpmTasks 'grunt-contrib-clean'
    # grunt.loadNpmTasks 'grunt-contrib-coffee'
    # grunt.loadNpmTasks 'grunt-contrib-less'
    # grunt.loadNpmTasks 'grunt-contrib-yuidoc'
    # grunt.loadNpmTasks 'grunt-contrib-copy'

    # direct
    # grunt.registerTask 'default', ['freemarker:test']
    # grunt.registerTask 'server', [ 'clean:htmls', 'freemarker:test', 'connect:server', 'watch:develop']

    grunt.registerTask 'build', ['clean:build', 'coffee', 'less:build', 'copy:htmls', 'copy:images', 'copy:modules', 'copy:views']
    grunt.registerTask 'dist', [ 'build', 'clean:dist', 'copy:build']

