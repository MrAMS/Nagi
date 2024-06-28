option("PROG")
    set_default("la32r_func")
    set_showmenu(true)
    set_category("prog")
    set_values("la32r_func", "NONE")

target("prog")
    set_kind("phony")
    add_options("PROG")
    local prog = get_config("PROG")
    if prog == "la32r_func" then
        includes("la32r_func")
        add_deps("la32r_func")
        set_configvar("PROG_BIN_PATH", "$(scriptdir)/prog/la32r_func/obj/main.bin")
    end
    add_configfiles("config_prog.h.in")
    

