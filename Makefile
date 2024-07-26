
PATH_TOOLS_SINGLE = ./tools/single

CD_SINGLE = ./tools/single/cd.hpp
CP_SINGLE = ./tools/single/cp.hpp
LS_SINGLE = ./tools/single/ls.hpp
MV_SINGLE = ./tools/single/mv.hpp
RM_SINGLE = ./tools/single/rm.hpp

CD_MULTI = ./tools/multi/cd.hpp
CP_MULTI = ./tools/multi/cp.hpp
LS_MULTI = ./tools/multi/ls.hpp
MV_MULTI = ./tools/multi/mv.hpp
RM_MULTI = ./tools/multi/rm.hpp

all: shell_optimized tools_single_optimized tools_multi_optimized
all_debug: shell_debug tools_single_debug tools_multi_debug

shell_debug: shell.cpp
	@echo -n "Compiling..."
	@g++ -DDEBUG -I./ -I$(PATH_TOOLS_SINGLE) shell.cpp -o ./build/shell_debug
	@echo "done."

shell_optimized: shell.cpp 
	@echo -n "Compiling..."
	@g++ -I./ -I$(PATH_TOOLS_SINGLE) shell.cpp -o ./build/shell
	@echo "done."

tools_single_debug: ./tools/wrapper.cpp
	@echo -n "Compiling..."
	@g++ -DDEBUG -I./ -Wp,-include,$(CD_SINGLE) -DSUBSPACE=cd ./tools/wrapper.cpp -o ./build/cd_single
	@g++ -DDEBUG -I./ -Wp,-include,$(CP_SINGLE) -DSUBSPACE=cp ./tools/wrapper.cpp -o ./build/cp_single
	@g++ -DDEBUG -I./ -Wp,-include,$(LS_SINGLE) -DSUBSPACE=ls ./tools/wrapper.cpp -o ./build/ls_single
	@g++ -DDEBUG -I./ -Wp,-include,$(MV_SINGLE) -DSUBSPACE=mv ./tools/wrapper.cpp -o ./build/mv_single
	@g++ -DDEBUG -I./ -Wp,-include,$(RM_SINGLE) -DSUBSPACE=rm ./tools/wrapper.cpp -o ./build/rm_single
	@echo "done."

tools_single_optimized: ./tools/wrapper.cpp
	@echo -n "Compiling..."
	@g++ -I./ -Wp,-include,$(CD_SINGLE) -DSUBSPACE=cd ./tools/wrapper.cpp -o ./build/cd_single
	@g++ -I./ -Wp,-include,$(CP_SINGLE) -DSUBSPACE=cp ./tools/wrapper.cpp -o ./build/cp_single
	@g++ -I./ -Wp,-include,$(LS_SINGLE) -DSUBSPACE=ls ./tools/wrapper.cpp -o ./build/ls_single
	@g++ -I./ -Wp,-include,$(MV_SINGLE) -DSUBSPACE=mv ./tools/wrapper.cpp -o ./build/mv_single
	@g++ -I./ -Wp,-include,$(RM_SINGLE) -DSUBSPACE=rm ./tools/wrapper.cpp -o ./build/rm_single
	@echo "done."

tools_multi_debug: ./tools/wrapper.cpp
	@echo -n "Compiling..."
	@g++ -DDEBUG -I./ -Wp,-include,$(CD_MULTI) -DSUBSPACE=cd ./tools/wrapper.cpp -o ./build/cd_multi
	@g++ -DDEBUG -I./ -Wp,-include,$(CP_MULTI) -DSUBSPACE=cp ./tools/wrapper.cpp -o ./build/cp_multi
	@g++ -DDEBUG -I./ -Wp,-include,$(LS_MULTI) -DSUBSPACE=ls ./tools/wrapper.cpp -o ./build/ls_multi
	@g++ -DDEBUG -I./ -Wp,-include,$(MV_MULTI) -DSUBSPACE=mv ./tools/wrapper.cpp -o ./build/mv_multi
	@g++ -DDEBUG -I./ -Wp,-include,$(RM_MULTI) -DSUBSPACE=rm ./tools/wrapper.cpp -o ./build/rm_multi
	@echo "done."

tools_multi_optimized: ./tools/wrapper.cpp
	@echo -n "Compiling..."
	@g++ -I./ -Wp,-include,$(CD_MULTI) -DSUBSPACE=cd ./tools/wrapper.cpp -o ./build/cd_multi
	@g++ -I./ -Wp,-include,$(CP_MULTI) -DSUBSPACE=cp ./tools/wrapper.cpp -o ./build/cp_multi
	@g++ -I./ -Wp,-include,$(LS_MULTI) -DSUBSPACE=ls ./tools/wrapper.cpp -o ./build/ls_multi
	@g++ -I./ -Wp,-include,$(MV_MULTI) -DSUBSPACE=mv ./tools/wrapper.cpp -o ./build/mv_multi
	@g++ -I./ -Wp,-include,$(RM_MULTI) -DSUBSPACE=rm ./tools/wrapper.cpp -o ./build/rm_multi
	@echo "done."

clean:
	@rm ./build/*
	@echo "Cleaned ./build"
