option("PROG")
    set_default("la32r_func")
    set_showmenu(true)
    set_category("prog")
    set_values("la32r_func", "lab1", "lab2", "perf_CRYPTONIGHT", "perf_MATRIX", "myprog", "NONE")

target("prog")
    set_kind("phony")
    add_options("PROG")
    local prog = get_config("PROG")
    set_configvar("PROG_NAME", prog)
    if prog == "la32r_func" then
        includes("la32r_func")
        add_deps("la32r_func")
        set_configvar("PROG_BIN_ADDR", "0x80000000", {quote = false})
        set_configvar("PROG_BIN_PATH", "$(scriptdir)/prog/la32r_func/obj/main.bin")
    elseif prog == "lab1" then
        set_configvar("PROG_BIN_ADDR", "0x80000000", {quote = false})
        set_configvar("PROG_BIN_PATH", "$(scriptdir)/prog/lab1/lab1.bin")
    elseif prog == "lab2" then
        set_configvar("PROG_BIN_ADDR", "0x80000000", {quote = false})
        set_configvar("PROG_BIN_PATH", "$(scriptdir)/prog/lab2/lab2.bin")
        set_configvar("PROG_LAB2", "true")
    elseif prog == "perf_CRYPTONIGHT" then
        set_configvar("PROG_BIN_ADDR", "0x80000000", {quote = false})
        set_configvar("PROG_BIN_PATH", "$(scriptdir)/prog/perf/kernel.bin")
        set_configvar("PROG_CRYPTONIGHT_BIN_PATH", "$(scriptdir)/prog/perf/crypto.bin")
    elseif prog == "perf_MATRIX" then
        set_configvar("PROG_BIN_ADDR", "0x80000000", {quote = false})
        set_configvar("PROG_BIN_PATH", "$(scriptdir)/prog/perf/kernel.bin")
        set_configvar("PROG_MATRIX_BIN_PATH", "$(scriptdir)/prog/perf/matrix.bin")
    end
    
    add_configfiles("config_prog.h.in")
    

