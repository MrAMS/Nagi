target("cemu")
    set_kind("headeronly")
    -- add_files("./**.hpp")
    add_deps("logger")
    add_includedirs("./", {public = true})
    add_includedirs("./src/", {public = true})