Rails Examples
==============

Examples of monkeypatching, etc

Notes
-----

* The 'active_reload' gem makes sure your controllers, etc aren't reloaded unless changed in development mode. This is necessary because modules that include themselves (see Bravo, Charlie, etc) won't get re-included if a controller is reloaded. Also note that if you change one of these controllers in dev mode, then it will be reloaded, though this isn't an issue for monkeypatched gems, plugins, etc. Therefore, if you see something along the lines of "undefined local variable or method `stringify' for #<DeltaController:0x007f91024b96d8>", then you probably modified a controller in this example app without restarting the rails server.
* See config/application.ru for necessary configuration items.
