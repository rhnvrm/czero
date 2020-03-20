FROM goldsourceservers/czero:latest

RUN apt-get update && apt-get install wget unzip

# Add maps
COPY maps/* czero/maps/

# Add Metamod
#COPY amxmodx/metamod/metamod-p-1.21p37-linux_i686.tar.gz .
#RUN mkdir -p czero/addons/metamod/dlls && \
#    mv metamod-p-1.21p37-linux_i686.tar.gz czero/addons/metamod/dlls && \
#    cd czero/addons/metamod/dlls && \
#    tar -zxvf metamod-p-1.21p37-linux_i686.tar.gz

#RUN cd czero && echo 'gamedll_linux "addons/metamod/dlls/metamod.so"' >> liblist.gam

# Add AMX Mod X
#COPY amxmodx/amxmodx-1.10.0-git5390-base-linux.tar.gz . 
#COPY amxmodx/amxmodx-1.10.0-git5390-cstrike-linux.tar.gz .
#RUN mv amxmodx-1.10.0-git5390-base-linux.tar.gz czero/ && \
#    mv amxmodx-1.10.0-git5390-cstrike-linux.tar.gz czero/ && \
#    cd czero && \
#    tar -zxvf amxmodx-1.10.0-git5390-base-linux.tar.gz && \
#    tar -zxvf amxmodx-1.10.0-git5390-cstrike-linux.tar.gz 
    
#RUN cd czero/addons/metamod && \
#    touch plugins.ini && \
#    echo "linux addons/amxmodx/dlls/amxmodx_mm_i386.so" >> plugins.ini

# Install PUG
#COPY pug/data/lang/* czero/addons/amxmodx/data/lang/
#COPY pug/scripting/* czero/addons/amxmodx/scripting/
#COPY pug/scripting/include/* czero/addons/amxmodx/scripting/include/
#COPY pug/scripting/include/* czero/addons/amxmodx/scripting/include/


#RUN cd czero/addons/amxmodx/scripting/ && \
#    ./compile.sh && \
#    mv compiled/Pug* ../plugins/

#RUN echo '\n\
#PugFlood.amxx	; Anti Flood \n\
#PugAdmin.amxx 	; Admin Flags  \n\
#PugCore.amxx 	; Pug Mod \n\
#PugConfig.amxx 	; Configs \n\
#PugReady.amxx 	; Ready System  \n\
#PugMenus.amxx	; Menus System \n\
#PugWarmup.amxx	; Warmup Plugin \n\
#PugStats.amxx 	; Stats Commands \n\
#PugVote.amxx 	; Vote Commands\n'\
#>> czero/addons/amxmodx/configs/plugins.ini

# Copy configs
COPY config/server.cfg czero/server.cfg
# COPY pug/configs/pug/* czero/addons/amxmodx/configs/
