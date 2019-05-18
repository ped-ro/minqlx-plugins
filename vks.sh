#!/bin/bash
# quakestart.sh - quake live multiple server spawning script.
# created by Thomas Jones on 09/09/15.
# thomas@tomtecsolutions.com


# Defining variables.
location="Los Angeles, CA"
qPathToStartScript="/home/steam/Steam/steamapps/common/qlds/run_server_x64_minqlx.sh"
sponsortag="QLSTATS.NET,LA,CA,VKS"
gameport=`expr $1 + 27960`
rconport=`expr $1 + 28960`
servernum=`expr $1 + 1`
qlxOwner="*******************"
# Starts servers with different settings, based off the process number parsed
# as argument 1 by supervisord.

echo "========== vks.sh has started========="
echo "========= $(date) ========="

if [ $1 -eq 0 ];
# starting CA 1
then
echo "Starting clan arena server 1"
exec "$qPathToStartScript" \
    +set net_strict 1 \
    +set net_port 27960 \
    +set sv_hostname "-----VKS-----CA-----LOS ANGELES1" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "****" \
    +set zmq_rcon_port "28960" \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "*****" \
    +set zmq_stats_port 27960 \
    +set g_voteFlags "" \
    +set sv_tags "vks,LA1,no bullshit" \
    +set roundtimelimit "100" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set g_accessFile "access.txt" \
    +set sv_mappoolFile "mappool_ca.txt" \
    +set fs_homepath "/home/steam/.quakelive/losangeles27960" \
    +set qlx_queueQueueMsg 0 \
    +set qlx_queueSpecMsg 0 \
    +set qlx_bdmBalanceAfterShuffleVote 1 \
    +set qlx_bdmRespondToBalanceCommand 1 \
    +set qlx_bdmREnableDoVote 1 \
    +set qlx_bdmBalanceAtGameStart 1 \
    +set qlx_bdmRespondToteamsCommand 1 \
    +set qlx_bdmEnableSwitch 1 \
    +set qlx_owner "*************" \
    +set serverstartup "map overkill ca" \
    +set qlx_funPlayerSoundRepeat 3 \
    +set qlx_funSoundDelay 3 \
    +set qlx_funEnableSoundPacks 63 \
    +set qlx_funPlayerSoundRepeat "3" \
    +set qlx_votepass 1 \
    +set sv_fps "40" \
    +set qlx_serversShowInChat "1" \
    +set sv_includecurrentmapinvote 1 \
    +set qlx_workshopReferences "585892371, 620087103, 572453229, 1250689005, 1733859113" \
    +set qlx_protectMapVoting 1 \
    +set qlx_leaverBan 1 \
    +set qlx_autospec_minplayers "2" \
    +set qlx_serverBrandName "VK^1S ^2LA1 ^7CA ^1DONT BRING YOUR BULLSHIT" \
    +set qlx_serverBrandTopField "^2LEAVE YOUR BULLSHIT AT THE DOOR" \
    +set qlx_serverBrandBottomField "CHECK YOUR STATS AT qlstats.net" \
    +set qlx_ircServer "*************" \
    +set qlx_ircRelayChannel "*********" \
    +set qlx_ircNickname "************" \
    +set qlx_enforceSteamName "0" \
    +set qlx_chatlogs 0 \
    +set qlx_chatlogsSize "500000" \
    +set qlx_ircPassword "***********" \
    +set qlx_connectMessage "remember, ^1NO BULLSHIT HERE!!" \
    +set qlx_countdownMessage "^2LAST WARNING, TOLERANCE TO BULLSHIT VERY LOW HERE" \
    +set qlx_ircColors 1 \
    +set qlx_teamsizeMaximum 16 \
    +set qlx_pinfo_display_auto 1 \
    +set qlx_redisPassword "***********" \
    +set qlx_plugins "balance, ban, branding, changemap, checkplayers, specqueue, workshop, clan, docs, essentials, irc, log, motd, names, permission, plugin_manager, raw, kills, silence, myFun, aliases, protect, ips, locations, votemanager, player_info, listmaps, serverBDM" \
    +set qlx_redisDatabase "0"
elif [ $1 -eq 1 ];
then
# starting duel server...
echo "Starting DUEL server1..."
exec "$qPathToStartScript" \
    +set net_strict 1 \
    +set net_port "27961" \
    +set sv_hostname "-----VKS-----DUEL--LOS ANGELES" \
    +set sv_maxclients "24" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "*****" \
    +set zmq_rcon_port "28961" \
    +set zmq_stats_enable 1 \
    +set zmq_stats_port "27961" \
    +set zmq_stats_password "**********" \
    +set sv_tags "VKS,DUEL,NO BULLSHIT" \
    +set g_timeoutCount "3" \
    +set g_voteFlags "" \
    +set roundtimelimit "0" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 0 \
    +set sv_maxClients "16" \
    +set bot_enable 0 \
    +set bot_nochat 0 \
    +set teamsize "4" \
    +set g_accessFile "access.txt" \
    +set sv_mappoolFile "duel.txt" \
    +set fs_homepath "/home/steam/.quakelive/losangeles27961"  \
    +set qlx_funPlayerSoundRepeat "10" \
    +set qlx_workshopReferences "585892371, 620087103, 572453229, 1250689005" \
    +set qlx_protectMapVoting 1 \
    +set qlx_enforceSteamName "0" \
    +set qlx_owner "$qlxOwner" \
    +set qlx_balanceUrl "" \
    +set serverstartup "map bloodrun duel" \
    +set qlx_votepass 1 \
    +set sv_fps "40" \
    +set qlx_pinfo_display_auto 1 \
    +set qlx_connectMessage "remember, ^1NO BULLSHIT HERE!!" \
    +set qlx_countdownMessage "^2LAST WARNING, TOLERANCE TO BULLSHIT VERY LOW HERE" \
    +set qlx_serverBrandName "VK^1S ^2LOS ANGELES ^7DUEL ^1DONT BRING YOUR BULLSHIT" \
    +set qlx_serverBrandTopField "^1--^7CHECK YOUR STATS AT^1--^7 stats.ebattlegrounds.net" \
    +set qlx_serverBrandBottomField "^2Good Luck and Have Fun^7!!" \
    +set qlx_redisPassword "************" \
    +set qlx_plugins "balance, ban, branding, checkplayers, clan, docs, essentials, irc, log, motd, kills, names, permission, plugin_manager, raw, silence, bgleague, aliases, protect, ips, locations, votemanager, listmaps, serverBDM" \
    +set qlx_redisDatabase "0"
elif [ $1 -eq 2 ]
then
# starting INSTA server...
echo "Starting INSTA server 1..."
exec "$qPathToStartScript" \
    +set net_strict 1 \
    +set net_port "27963" \
    +set sv_hostname "-----VKS-----INSTA-LOS ANGELES" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "*****" \
    +set zmq_rcon_port "28963" \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "*******" \
    +set zmq_stats_port "27963" \
    +set sv_tags "vks,los angeles,no bullshit" \
    +set g_voteFlags "" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 0 \
    +set bot_nochat 0 \
    +set g_accessFile "access.txt" \
    +set sv_mappoolFile "mappool_insta.txt" \
    +set fs_homepath "/home/steam/.quakelive/losangeles27963" \
    +set qlx_owner "$qlxOwner" \
    +set serverstartup "map longestyard iffa" \
    +set qlx_votepass 1 \
    +set sv_fps "40" \
    +set sv_includecurrentmapinvote 1 \
    +set g_railjump 500 \
    +set g_allowKill 1 \
    +set pmove_doublejump 1 \
    +set qlx_funPlayerSoundRepeat 3 \
    +set qlx_funSoundDelay 3 \
    +set qlx_funEnableSoundPacks 63 \
    +set qlx_funPlayerSoundRepeat "3" \
    +set qlx_balanceApi "elo_b" \
    +set qlx_workshopReferences "585892371, 620087103, 572453229, 1250689005, 1733859113" \
    +set qlx_countdownMessage "remember ^1TOLERANCE TO BULLSHIT VERY LOW HERE" \
    +set qlx_brandingPrependMapName 1 \
    +set qlx_pinfo_display_auto 1 \
    +set qlx_defaultMapToChangeTo "longestyard" \
    +set qlx_defaultMapFactoryToChangeTo "iffa" \
    +set qlx_enforceSteamName "0" \
    +set qlx_brandingAppendMapName "1" \
    +set qlx_serverBrandName "VK^1S^7 INSTA ^2LOS ANGELES" \
    +set qlx_serverBrandTopField "^1DONT BRING YOUR BULLSHIT HERE" \
    +set qlx_serverBrandBottomField "CHECK YOUR STATS AT qlstats.net" \
    +set qlx_ircPassword "*********" \
    +set qlx_redisPassword "***********" \
    +set qlx_plugins "balance, ban, branding, changemap, checkplayers, clan, docs, essentials, motd, irc, log, names, permission, workshop, plugin_manager, raw, silence, myFun, aliases, protect, ips, locations, votemanager, listmaps, player_info, serverBDM" \
    +set qlx_redisDatabase "1"
elif [ $1 -eq 3 ]
then
# starting ca2 server...
echo "Starting clan arena server 2"
exec "$qPathToStartScript" \
    +set net_strict 1 \
    +set net_port 27964 \
    +set sv_hostname "-----VKS-----CA-----LOS ANGELES2" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "*********" \
    +set zmq_rcon_port "28964" \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "******" \
    +set zmq_stats_port 27964 \
    +set g_voteFlags "" \
    +set sv_tags "vks,LA2,no bullshit" \
    +set roundtimelimit "100" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set g_accessFile "access.txt" \
    +set sv_mappoolFile "mappool_ca.txt" \
    +set fs_homepath "/home/steam/.quakelive/losangeles27964" \
    +set qlx_queueQueueMsg 0 \
    +set qlx_queueSpecMsg 0\
    +set qlx_bdmBalanceAfterShuffleVote 1 \
    +set qlx_bdmRespondToBalanceCommand 1 \
    +set qlx_bdmREnableDoVote 1 \
    +set qlx_bdmBalanceAtGameStart 1 \
    +set qlx_bdmRespondToteamsCommand 1 \
    +set qlx_bdmEnableSwitch 1 \
    +set qlx_owner "**************" \
    +set serverstartup "map campgrounds ca" \
    +set qlx_funPlayerSoundRepeat 3 \
    +set qlx_funSoundDelay 3 \
    +set qlx_funEnableSoundPacks 63 \
    +set qlx_funPlayerSoundRepeat "3" \
    +set qlx_votepass 1 \
    +set sv_fps "40" \
    +set qlx_serversShowInChat "1" \
    +set sv_includecurrentmapinvote 1 \
    +set qlx_workshopReferences "585892371, 620087103, 572453229, 1250689005, 1733859113" \
    +set qlx_protectMapVoting 1 \
    +set qlx_leaverBan 1 \
    +set qlx_autospec_minplayers "2" \
    +set qlx_serverBrandName "VK^1S ^2LA2 ^7CA ^1DONT BRING YOUR BULLSHIT" \
    +set qlx_serverBrandTopField "^2LEAVE YOUR BULLSHIT AT THE DOOR" \
    +set qlx_serverBrandBottomField "CHECK YOUR STATS AT qlstats.net" \
    +set qlx_ircServer "************" \
    +set qlx_ircRelayChannel "******" \
    +set qlx_ircNickname "*********" \
    +set qlx_enforceSteamName "0" \
    +set qlx_chatlogs 0 \
    +set qlx_chatlogsSize "500000" \
    +set qlx_ircPassword "**********" \
    +set qlx_connectMessage "remember, ^1NO BULLSHIT HERE!!" \
    +set qlx_countdownMessage "^2LAST WARNING, TOLERANCE TO BULLSHIT VERY LOW HERE" \
    +set qlx_ircColors 1 \
    +set qlx_teamsizeMaximum 16 \
    +set qlx_pinfo_display_auto 1 \
    +set qlx_redisPassword "***********" \
    +set qlx_plugins "balance, ban, branding, changemap, checkplayers, specqueue, workshop, clan, docs, essentials, irc, log, motd, names, permission, plugin_manager, raw, kills, silence, myFun, aliases, protect, ips, locations, votemanager, player_info, listmaps, serverBDM" \
    +set qlx_redisDatabase "0"
fi
