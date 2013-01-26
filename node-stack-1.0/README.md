# server-side

* Procfile
* node
* coffee
* stylus
* express
* mongodb
* underscore
* rjs
* jade
* requiredir
* async


# client-side

* backbone
* underscore
* backbone
* rjs
* creatable
* creatable.backbone
* jquery.livequery
* jquery.gather
* date

# directory structure

root          // coffee output (NOTE: different than client-side because app.js needs to be relative to root)
  |- controllers
  |- models
  |- lib      // 3rd party libraries
  |- src      // coffee input
    |- controllers
    |- models
  |- view     // jade templates
  |- public
    |- img
    |- style
    |- scripts
       |- lib     // 3rd party libraries
       |- out     // coffee output
       |- src     // coffee input

# to start the app
* node install
* copy and run the shell commands from 'start-bg-scripts'
* foreman run
