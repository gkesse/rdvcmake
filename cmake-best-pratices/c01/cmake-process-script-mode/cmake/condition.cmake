message(STATUS "(01): CMake Process Script Mode: Condition")

# condition si - sinon si - sinon
set(M_VAR 700)
set(M_MIN 200)
set(M_MAX 600)

if(M_VAR LESS M_MIN)
    message(STATUS "(02): ${M_VAR} est strictement inférieur à ${M_MIN}")
elseif(M_VAR LESS_EQUAL M_MAX)
    message(STATUS "(03): ${M_VAR} appartient à l'intervalle [${M_MIN} ; ${M_MAX}]")
else()
    message(STATUS "(04): ${M_VAR} est strictement supérieur à ${M_MAX}")
endif()

# condition strictement inférieur
if(10 LESS 100)
    message(STATUS "(05): 10 est strictement inférieur à 100")
endif()

# condition inférieur ou égal
if(10 LESS_EQUAL 100)
    message(STATUS "(06): 10 est inférieur ou égal à 100")
endif()

# condition strictement supérieur
if(100 GREATER 10)
    message(STATUS "(07): 100 est strictement supérieur à 10")
endif()

# condition supérieur ou égal
if(100 GREATER_EQUAL 10)
    message(STATUS "(08): 100 est supérieur ou égal à 10")
endif()

# condition égal
if(100 EQUAL 100)
    message(STATUS "(09): 100 est égal à 100")
endif()

# condition égal
if(100 EQUAL 100)
    message(STATUS "(09): 100 est égal à 100")
endif()

# condition chaîne strictement inférieure
if("hello" STRLESS "world")
    message(STATUS "(10): \"hello\" est strictement inférieure à \"world\"")
endif()

# condition chaîne inférieure ou égale
if("hello" STRLESS_EQUAL "world")
    message(STATUS "(11): \"hello\" est inférieure ou égale à \"world\"")
endif()

# condition chaîne strictement supérieure
if("world" STRGREATER "hello")
    message(STATUS "(12): \"world\" est strictement supérieure à \"hello\"")
endif()

# condition chaîne supérieure ou égale
if("world" STRGREATER_EQUAL "hello")
    message(STATUS "(13): \"world\" est supérieure ou égale à \"hello\"")
endif()

# condition chaîne égale
if("hello" STRGREATER_EQUAL "hello")
    message(STATUS "(14): \"hello\" est égale à \"hello\"")
endif()
