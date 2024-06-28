set_project("Nagi")

set_warnings("all")
set_languages("c++17")

add_requires("fmt")

add_rules("plugin.compile_commands.autoupdate")

includes("cores", "utils", "diff", "prog")



