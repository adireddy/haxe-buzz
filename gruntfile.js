module.exports = function (grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON("package.json"),

        haxe: {
            project: {
                hxml: "build.hxml"
            }
        },

        zip: {
            "buzz.zip": ["./buzz/**", "haxelib.json", "README.md"],
        },

        exec: {
            copy: "cp -R samples/_output/** ../adireddy.github.io/demos/haxe-buzz/"
        }
    });

    grunt.loadNpmTasks("grunt-haxe");
    grunt.loadNpmTasks("grunt-zip");
    grunt.loadNpmTasks("grunt-exec");
    grunt.registerTask("default", ["haxe", "exec"]);
};