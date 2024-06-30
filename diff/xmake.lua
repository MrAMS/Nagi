add_requires("gperftools")

option("GPERF_ENABLE")
    set_default(false)
    set_showmenu(true)
    set_category("sim")
    set_description("enable gperftools")
    after_check(function (option)
        option:set("configvar", option:name(), option:value())
    end)

-- option("GTKWAVE_ENABLE")
--     set_showmenu(true)
--     -- set_default(true)
--     set_category("sim")
--     set_description("enable gtkwave")
--     add_deps("WAVE_ENABLE")
--     after_check(function (option)
--         print("after check")
--         -- print("wave value", option:dep("WAVE_ENABLE"):value(), option:value())
--         if not option:dep("WAVE_ENABLE"):value() then
--             option:enable(false)
--         end
--     end)

target("diff")
    set_kind("binary")
    add_files("./*.cpp")
    add_deps("logger")
    add_deps("nagicore")
    add_deps("disassmbler")
    add_deps("timer")
    add_packages("fmt")
    add_options("GPERF_ENABLE")
    if(get_config("GPERF_ENABLE")) then
        add_packages("gperftools")
    end
    add_options("WAVE_ENABLE")
    after_run(function (target)
        if(get_config("WAVE_ENABLE")) then
            os.exec("gtkwave %s/wave.fst -a %s/wave.sav --saveonexit", target:targetdir(), target:targetdir())
        end
    end)
    add_configfiles("config_diff.h.in")

target("wave")
    set_kind("phony")
    on_run(function (target)
        os.exec("gtkwave %s/wave.fst -a %s/wave.sav --saveonexit", target:targetdir(), target:targetdir())
    end)
