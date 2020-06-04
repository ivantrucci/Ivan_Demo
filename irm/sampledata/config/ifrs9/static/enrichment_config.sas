data WORK.enrichment_config;
   attrib                                                                                                                                       
      CONFIG_NAME                      length = $40.
      CONFIG_VALUE                     length = $10000.
      CONFIG_VALUE_DESC                length = $250.
   ;
   infile cards dsd delimiter = ',';
   input 
      CONFIG_NAME                      :$char.
      CONFIG_VALUE                     :$char.
      CONFIG_VALUE_DESC                :$char.
   ;
      
datalines4;
DSTORE_TABLE_LIST,,Space separated list of tables to be registered to the Data Repository. All tables defined in DATASTORE_CONFIG will be processed if no value is specified.
ENRICH_COUNTERPARTY_FLG,N,Flag: Y/N. Controls whether the Portfolio table should be enriched with data from the Counterparty table
ENRICH_SPPI_FLG,N,Flag: Y/N. Controls whether the Portfolio table should be enriched with data from the Sppi table
;;;;
run;