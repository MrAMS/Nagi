target("disassmbler")
    set_kind("static")
    add_files("*.cpp")
    add_includedirs("./", {public = true})