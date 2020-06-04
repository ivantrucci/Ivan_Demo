data WORK.run_option;
   attrib                                                                                                                                       
      CONFIG_NAME                      length = $40.
      CONFIG_VALUE                     length = $10000.
      CONFIG_VALUE_DESC                length = $150.
   ;
   infile cards dsd delimiter = ',';
   input 
      CONFIG_NAME                      :$char.
      CONFIG_VALUE                     :$char.
      CONFIG_VALUE_DESC                :$char.
   ;
   /* Set the Meta Server parameter (if available) */
   if(config_name = "META_SERVER" and symexist("meta_server")) then
      config_value = symget("meta_server");
      
datalines4;
CYCLE_ID,,Cycle Identifier
ANALYSIS_RUN_ID,,Analysis Run Identifier
ANALYSIS_TYPE,,"Analysis Type: AFS, FR_HTM, OTHER"
MODEL_RUN_ID,,Model Run Identifier
ATTRIB_CURR_ANALYSIS_RUN_ID,,Current Period Analysis Run Identifier
ATTRIB_PREV_ANALYSIS_RUN_ID,,Previous Period Analysis Run Identifier
MAX_WAIT,3600,Maximum waiting time (in seconds) for rest based job execution
POLL_INTERVAL,5,Number of seconds between consecutive polling request for jobflow execution status update
LOG_LEVEL,1,"Logging Level: 0-4 (0: ERROR, 1: WARNING, 2: INFO, 3: DEBUG, 4: TRACE)"
RMC_FA_ID,rmc.*,Federated Area Id for SAS Risk Stratum Core.
SYSTEM_OPTIONS,compress = yes,Any valid SAS system options
DR_LIBRARY_NAME,SAS IFRS9 Data Repository,Name of the metadata library where the IFRS9 Data Repository resides
MART_LIBRARY_NAME,SAS IFRS9 Reportmart,Data Provider library for the SAS IFRS9 LASR library
LASR_LIBRARY_NAME,SAS IFRS9 LASR,IFRS9 LASR library
LASR_META_FOLDER,/Products/SAS Solution for IFRS9/Data/Visual Analytics,Metadata folder where the IFRS9 LASR library is defined
METAPORT,,Metadata server port: default value 8561 is assumed unless otherwise specified
META_SERVER,,Metadata server: localhost is assumed unless otherwise specified
META_PROTOCOL,,Metadata protocol: Bridge protocol is assumed unless otherwise specified
META_REPOSITORY,Foundation,Metadata Repository: Foundation repository is assumed unless otherwise specified
N_PARTITIONS,AUTO,Number of partitions for parallel processing
RELOAD_LASR_FLG,N,Flag: Y/N. Controls whether a full reload of the reportmart tables to LASR should be performed
RELOAD_KEY_LIST,,List of analysis data keys. Controls which analysis data objects should be reloaded to the reportmart (used when RELOAD_LASR_FLG = Y)
TGT_TICKET,,TGT Authentication Ticket
RGF_SOLUTION,rmc,Risk Governance Framework content solution
REGISTER_RULESETS_FLG,N,Flag: Y/N. Controls whether business rule sets should be registered.
;;;;
run;