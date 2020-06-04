/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
/*!
   \file
   \brief   Sample data for MAP_GEO_HIERARCHY.
   \details Sample data for MAP_GEO_HIERARCHY. For documentation and guidance please refer to the corresponding ddl file.
   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/
data WORK.MAP_GEO_HIERARCHY;
   attrib
      GEOGRAPHY_CD         length = $32.
      GEOGRAPHY_LEV1       length = $100.
      GEOGRAPHY_LEV2       length = $100.
      GEOGRAPHY_LEV3       length = $100.
      GEOGRAPHY_LEV4       length = $100.
   ;
   
   infile cards dsd delimiter = ',';
   
   input 
      GEOGRAPHY_CD      :$char.
      GEOGRAPHY_LEV1    :$char.
      GEOGRAPHY_LEV2    :$char.
      GEOGRAPHY_LEV3    :$char.
      GEOGRAPHY_LEV4    :$char.
   ;

datalines4;
AD,Europe,Southern Europe,Andorra,All Regions
AD_02,Europe,Southern Europe,Andorra,Canillo
AD_03,Europe,Southern Europe,Andorra,Encamp
AD_04,Europe,Southern Europe,Andorra,La Massana
AD_05,Europe,Southern Europe,Andorra,Ordino
AD_06,Europe,Southern Europe,Andorra,Sant Julia de Loria
AD_07,Europe,Southern Europe,Andorra,Andorra la Vella
AD_08,Europe,Southern Europe,Andorra,Escaldes-Engordany
AE,Asia,Western Asia,United Arab Emirates,All Regions
AE_AJ,Asia,Western Asia,United Arab Emirates,Ajman
AE_AZ,Asia,Western Asia,United Arab Emirates,Abu Zaby
AE_DU,Asia,Western Asia,United Arab Emirates,Dubayy
AE_FU,Asia,Western Asia,United Arab Emirates,Al Fujayrah
AE_RK,Asia,Western Asia,United Arab Emirates,Ra's al Khaymah
AE_SH,Asia,Western Asia,United Arab Emirates,Ash Shariqah
AE_UQ,Asia,Western Asia,United Arab Emirates,Umm al Qaywayn
AF,Asia,Southern Asia,Afghanistan,All Regions
AF_BAL,Asia,Southern Asia,Afghanistan,Balkh
AF_BAM,Asia,Southern Asia,Afghanistan,Bamyan
AF_BDS,Asia,Southern Asia,Afghanistan,Badakhshan
AF_BGL,Asia,Southern Asia,Afghanistan,Baghlan
AF_DAY,Asia,Southern Asia,Afghanistan,Daykundi
AF_GHO,Asia,Southern Asia,Afghanistan,Ghor
AF_HEL,Asia,Southern Asia,Afghanistan,Helmand
AF_HER,Asia,Southern Asia,Afghanistan,Herat
AF_JOW,Asia,Southern Asia,Afghanistan,Jowzjan
AF_KAB,Asia,Southern Asia,Afghanistan,Kabul
AF_KAN,Asia,Southern Asia,Afghanistan,Kandahar
AF_KDZ,Asia,Southern Asia,Afghanistan,Kunduz
AF_KHO,Asia,Southern Asia,Afghanistan,Khost
AF_LOG,Asia,Southern Asia,Afghanistan,Logar
AF_NAN,Asia,Southern Asia,Afghanistan,Nangarhar
AF_NIM,Asia,Southern Asia,Afghanistan,Nimroz
AF_PAR,Asia,Southern Asia,Afghanistan,Parwan
AF_PIA,Asia,Southern Asia,Afghanistan,Paktiya
AF_PKA,Asia,Southern Asia,Afghanistan,Paktika
AF_TAK,Asia,Southern Asia,Afghanistan,Takhar
AF_URU,Asia,Southern Asia,Afghanistan,Uruzgan
AG,America,Caribbean,Antigua and Barbuda,All Regions
AG_04,America,Caribbean,Antigua and Barbuda,Saint John
AG_05,America,Caribbean,Antigua and Barbuda,Saint Mary
AG_06,America,Caribbean,Antigua and Barbuda,Saint Paul
AI,America,Caribbean,Anguilla,All Regions
AI_Anguilla,America,Caribbean,Anguilla,Anguilla
AL,Europe,Southern Europe,Albania,All Regions
AL_01,Europe,Southern Europe,Albania,Berat
AL_02,Europe,Southern Europe,Albania,Durres
AL_03,Europe,Southern Europe,Albania,Elbasan
AL_04,Europe,Southern Europe,Albania,Fier
AL_05,Europe,Southern Europe,Albania,Gjirokaster
AL_06,Europe,Southern Europe,Albania,Korce
AL_07,Europe,Southern Europe,Albania,Kukes
AL_08,Europe,Southern Europe,Albania,Lezhe
AL_09,Europe,Southern Europe,Albania,Diber
AL_10,Europe,Southern Europe,Albania,Shkoder
AL_11,Europe,Southern Europe,Albania,Tirane
AL_12,Europe,Southern Europe,Albania,Vlore
AM,Asia,Western Asia,Armenia,All Regions
AM_AG,Asia,Western Asia,Armenia,Aragacotn
AM_AR,Asia,Western Asia,Armenia,Ararat
AM_AV,Asia,Western Asia,Armenia,Armavir
AM_ER,Asia,Western Asia,Armenia,Erevan
AM_GR,Asia,Western Asia,Armenia,Gegarkunik
AM_KT,Asia,Western Asia,Armenia,Kotayk
AM_LO,Asia,Western Asia,Armenia,Lori
AM_SH,Asia,Western Asia,Armenia,Sirak
AM_SU,Asia,Western Asia,Armenia,Syunik
AM_TV,Asia,Western Asia,Armenia,Tavus
AM_VD,Asia,Western Asia,Armenia,Vayoc Jor
AO,Africa,Middle Africa,Angola,All Regions
AO_BGO,Africa,Middle Africa,Angola,Bengo
AO_BGU,Africa,Middle Africa,Angola,Benguela
AO_BIE,Africa,Middle Africa,Angola,Bie
AO_CAB,Africa,Middle Africa,Angola,Cabinda
AO_CCU,Africa,Middle Africa,Angola,Kuando Kubango
AO_CNN,Africa,Middle Africa,Angola,Cunene
AO_CNO,Africa,Middle Africa,Angola,Kwanza Norte
AO_CUS,Africa,Middle Africa,Angola,Kwanza Sul
AO_HUA,Africa,Middle Africa,Angola,Huambo
AO_HUI,Africa,Middle Africa,Angola,Huila
AO_LNO,Africa,Middle Africa,Angola,Lunda Norte
AO_LSU,Africa,Middle Africa,Angola,Lunda Sul
AO_LUA,Africa,Middle Africa,Angola,Luanda
AO_MAL,Africa,Middle Africa,Angola,Malange
AO_MOX,Africa,Middle Africa,Angola,Moxico
AO_NAM,Africa,Middle Africa,Angola,Namibe
AO_UIG,Africa,Middle Africa,Angola,Uige
AO_ZAI,Africa,Middle Africa,Angola,Zaire
AQ,Antarctica,Antarctica,Antarctica,All Regions
AR,America,South America,Argentina,All Regions
AR_A,America,South America,Argentina,Salta
AR_B,America,South America,Argentina,Buenos Aires
AR_C,America,South America,Argentina,Ciudad Autonoma de Buenos Aires
AR_D,America,South America,Argentina,San Luis
AR_E,America,South America,Argentina,Entre Rios
AR_F,America,South America,Argentina,La Rioja
AR_G,America,South America,Argentina,Santiago del Estero
AR_H,America,South America,Argentina,Chaco
AR_J,America,South America,Argentina,San Juan
AR_K,America,South America,Argentina,Catamarca
AR_L,America,South America,Argentina,La Pampa
AR_M,America,South America,Argentina,Mendoza
AR_N,America,South America,Argentina,Misiones
AR_P,America,South America,Argentina,Formosa
AR_Q,America,South America,Argentina,Neuquen
AR_R,America,South America,Argentina,Rio Negro
AR_S,America,South America,Argentina,Santa Fe
AR_T,America,South America,Argentina,Tucuman
AR_U,America,South America,Argentina,Chubut
AR_V,America,South America,Argentina,Tierra del Fuego
AR_W,America,South America,Argentina,Corrientes
AR_X,America,South America,Argentina,Cordoba
AR_Y,America,South America,Argentina,Jujuy
AR_Z,America,South America,Argentina,Santa Cruz
AS,Oceania,Polynesia,American Samoa,All Regions
AS_Eastern_District,Oceania,Polynesia,American Samoa,Eastern District
AS_Western_District,Oceania,Polynesia,American Samoa,Western District
AT,Europe,Western Europe,Austria,All Regions
AT_1,Europe,Western Europe,Austria,Burgenland
AT_2,Europe,Western Europe,Austria,Karnten
AT_3,Europe,Western Europe,Austria,Niederosterreich
AT_4,Europe,Western Europe,Austria,Oberosterreich
AT_5,Europe,Western Europe,Austria,Salzburg
AT_6,Europe,Western Europe,Austria,Steiermark
AT_7,Europe,Western Europe,Austria,Tirol
AT_8,Europe,Western Europe,Austria,Vorarlberg
AT_9,Europe,Western Europe,Austria,Wien
AU,Oceania,Australia and New Zealand,Australia,All Regions
AU_ACT,Oceania,Australia and New Zealand,Australia,Australian Capital Territory
AU_NSW,Oceania,Australia and New Zealand,Australia,New South Wales
AU_NT,Oceania,Australia and New Zealand,Australia,Northern Territory
AU_QLD,Oceania,Australia and New Zealand,Australia,Queensland
AU_SA,Oceania,Australia and New Zealand,Australia,South Australia
AU_TAS,Oceania,Australia and New Zealand,Australia,Tasmania
AU_VIC,Oceania,Australia and New Zealand,Australia,Victoria
AU_WA,Oceania,Australia and New Zealand,Australia,Western Australia
AW,America,Caribbean,Aruba,All Regions
AW_Aruba_general,America,Caribbean,Aruba,Aruba (general)
AZ,Asia,Western Asia,Azerbaijan,All Regions
AZ_ABS,Asia,Western Asia,Azerbaijan,Abseron
AZ_AGA,Asia,Western Asia,Azerbaijan,Agstafa
AZ_AGC,Asia,Western Asia,Azerbaijan,Agcabadi
AZ_AGS,Asia,Western Asia,Azerbaijan,Agdas
AZ_AGU,Asia,Western Asia,Azerbaijan,Agsu
AZ_AST,Asia,Western Asia,Azerbaijan,Astara
AZ_BA,Asia,Western Asia,Azerbaijan,Baki
AZ_BAL,Asia,Western Asia,Azerbaijan,Balakan
AZ_BAR,Asia,Western Asia,Azerbaijan,Barda
AZ_BEY,Asia,Western Asia,Azerbaijan,Beylaqan
AZ_BIL,Asia,Western Asia,Azerbaijan,Bilasuvar
AZ_CAL,Asia,Western Asia,Azerbaijan,Calilabad
AZ_DAS,Asia,Western Asia,Azerbaijan,Daskasan
AZ_GA,Asia,Western Asia,Azerbaijan,Ganca
AZ_GOR,Asia,Western Asia,Azerbaijan,Goranboy
AZ_GOY,Asia,Western Asia,Azerbaijan,Goycay
AZ_GYG,Asia,Western Asia,Azerbaijan,Goygol
AZ_HAC,Asia,Western Asia,Azerbaijan,Haciqabul
AZ_IMI,Asia,Western Asia,Azerbaijan,Imisli
AZ_ISM,Asia,Western Asia,Azerbaijan,Ismayilli
AZ_LA,Asia,Western Asia,Azerbaijan,Lankaran
AZ_MAS,Asia,Western Asia,Azerbaijan,Masalli
AZ_MI,Asia,Western Asia,Azerbaijan,Mingacevir
AZ_NA,Asia,Western Asia,Azerbaijan,Naftalan
AZ_NEF,Asia,Western Asia,Azerbaijan,Neftcala
AZ_NX,Asia,Western Asia,Azerbaijan,Naxcivan
AZ_OGU,Asia,Western Asia,Azerbaijan,Oguz
AZ_QAB,Asia,Western Asia,Azerbaijan,Qabala
AZ_QAX,Asia,Western Asia,Azerbaijan,Qax
AZ_QAZ,Asia,Western Asia,Azerbaijan,Qazax
AZ_QBA,Asia,Western Asia,Azerbaijan,Quba
AZ_QOB,Asia,Western Asia,Azerbaijan,Qobustan
AZ_QUS,Asia,Western Asia,Azerbaijan,Qusar
AZ_SA,Asia,Western Asia,Azerbaijan,Saki
AZ_SAB,Asia,Western Asia,Azerbaijan,Sabirabad
AZ_SAL,Asia,Western Asia,Azerbaijan,Salyan
AZ_SAT,Asia,Western Asia,Azerbaijan,Saatli
AZ_SKR,Asia,Western Asia,Azerbaijan,Samkir
AZ_SM,Asia,Western Asia,Azerbaijan,Sumqayit
AZ_SMI,Asia,Western Asia,Azerbaijan,Samaxi
AZ_TAR,Asia,Western Asia,Azerbaijan,Tartar
AZ_TOV,Asia,Western Asia,Azerbaijan,Tovuz
AZ_UCA,Asia,Western Asia,Azerbaijan,Ucar
AZ_XAC,Asia,Western Asia,Azerbaijan,Xacmaz
AZ_XIZ,Asia,Western Asia,Azerbaijan,Xizi
AZ_YAR,Asia,Western Asia,Azerbaijan,Yardimli
AZ_YE,Asia,Western Asia,Azerbaijan,Yevlax
AZ_ZAQ,Asia,Western Asia,Azerbaijan,Zaqatala
AZ_ZAR,Asia,Western Asia,Azerbaijan,Zardab
BA,Europe,Southern Europe,Bosnia and Herzegovina,All Regions
BA_BIH,Europe,Southern Europe,Bosnia and Herzegovina,Federacija Bosne i Hercegovine
BA_SRP,Europe,Southern Europe,Bosnia and Herzegovina,Republika Srpska
BB,America,Caribbean,Barbados,All Regions
BB_01,America,Caribbean,Barbados,Christ Church
BB_04,America,Caribbean,Barbados,Saint James
BB_06,America,Caribbean,Barbados,Saint Joseph
BB_08,America,Caribbean,Barbados,Saint Michael
BB_09,America,Caribbean,Barbados,Saint Peter
BD,Asia,Southern Asia,Bangladesh,All Regions
BD_06,Asia,Southern Asia,Bangladesh,Barisal
BD_10,Asia,Southern Asia,Bangladesh,Chittagong
BD_13,Asia,Southern Asia,Bangladesh,Dhaka
BD_27,Asia,Southern Asia,Bangladesh,Khulna
BD_54,Asia,Southern Asia,Bangladesh,Rajshahi
BD_55,Asia,Southern Asia,Bangladesh,Rangpur
BD_60,Asia,Southern Asia,Bangladesh,Sylhet
BE,Europe,Western Europe,Belgium,All Regions
BE_BRU,Europe,Western Europe,Belgium,Brussels Hoofdstedelijk Gewest
BE_VAN,Europe,Western Europe,Belgium,Antwerpen
BE_VBR,Europe,Western Europe,Belgium,Vlaams-Brabant
BE_VLI,Europe,Western Europe,Belgium,Limburg
BE_VOV,Europe,Western Europe,Belgium,Oost-Vlaanderen
BE_VWV,Europe,Western Europe,Belgium,West-Vlaanderen
BE_WBR,Europe,Western Europe,Belgium,Brabant wallon
BE_WHT,Europe,Western Europe,Belgium,Hainaut
BE_WLG,Europe,Western Europe,Belgium,Liege
BE_WLX,Europe,Western Europe,Belgium,Luxembourg
BE_WNA,Europe,Western Europe,Belgium,Namur
BF,Africa,Western Africa,Burkina Faso,All Regions
BF_BLG,Africa,Western Africa,Burkina Faso,Boulgou
BF_BLK,Africa,Western Africa,Burkina Faso,Boulkiemde
BF_COM,Africa,Western Africa,Burkina Faso,Comoe
BF_HOU,Africa,Western Africa,Burkina Faso,Houet
BF_KAD,Africa,Western Africa,Burkina Faso,Kadiogo
BF_KOW,Africa,Western Africa,Burkina Faso,Kourweogo
BF_LER,Africa,Western Africa,Burkina Faso,Leraba
BF_MOU,Africa,Western Africa,Burkina Faso,Mouhoun
BF_PON,Africa,Western Africa,Burkina Faso,Poni
BF_TUI,Africa,Western Africa,Burkina Faso,Tuy
BF_YAT,Africa,Western Africa,Burkina Faso,Yatenga
BF_ZOU,Africa,Western Africa,Burkina Faso,Zoundweogo
BG,Europe,Eastern Europe,Bulgaria,All Regions
BG_01,Europe,Eastern Europe,Bulgaria,Blagoevgrad
BG_02,Europe,Eastern Europe,Bulgaria,Burgas
BG_03,Europe,Eastern Europe,Bulgaria,Varna
BG_04,Europe,Eastern Europe,Bulgaria,Veliko Tarnovo
BG_05,Europe,Eastern Europe,Bulgaria,Vidin
BG_06,Europe,Eastern Europe,Bulgaria,Vratsa
BG_07,Europe,Eastern Europe,Bulgaria,Gabrovo
BG_08,Europe,Eastern Europe,Bulgaria,Dobrich
BG_09,Europe,Eastern Europe,Bulgaria,Kardzhali
BG_10,Europe,Eastern Europe,Bulgaria,Kyustendil
BG_11,Europe,Eastern Europe,Bulgaria,Lovech
BG_12,Europe,Eastern Europe,Bulgaria,Montana
BG_13,Europe,Eastern Europe,Bulgaria,Pazardzhik
BG_14,Europe,Eastern Europe,Bulgaria,Pernik
BG_15,Europe,Eastern Europe,Bulgaria,Pleven
BG_16,Europe,Eastern Europe,Bulgaria,Plovdiv
BG_17,Europe,Eastern Europe,Bulgaria,Razgrad
BG_18,Europe,Eastern Europe,Bulgaria,Ruse
BG_19,Europe,Eastern Europe,Bulgaria,Silistra
BG_20,Europe,Eastern Europe,Bulgaria,Sliven
BG_21,Europe,Eastern Europe,Bulgaria,Smolyan
BG_22,Europe,Eastern Europe,Bulgaria,Sofia (stolitsa)
BG_23,Europe,Eastern Europe,Bulgaria,Sofia
BG_24,Europe,Eastern Europe,Bulgaria,Stara Zagora
BG_25,Europe,Eastern Europe,Bulgaria,Targovishte
BG_26,Europe,Eastern Europe,Bulgaria,Haskovo
BG_27,Europe,Eastern Europe,Bulgaria,Shumen
BG_28,Europe,Eastern Europe,Bulgaria,Yambol
BH,Asia,Western Asia,Bahrain,All Regions
BH_13,Asia,Western Asia,Bahrain,Al 'Asimah
BH_15,Asia,Western Asia,Bahrain,Al Muharraq
BH_17,Asia,Western Asia,Bahrain,Ash Shamaliyah
BI,Africa,Eastern Africa,Burundi,All Regions
BI_BB,Africa,Eastern Africa,Burundi,Bubanza
BI_BM,Africa,Eastern Africa,Burundi,Bujumbura Mairie
BI_CI,Africa,Eastern Africa,Burundi,Cibitoke
BI_GI,Africa,Eastern Africa,Burundi,Gitega
BI_KI,Africa,Eastern Africa,Burundi,Kirundo
BI_MW,Africa,Eastern Africa,Burundi,Mwaro
BI_MY,Africa,Eastern Africa,Burundi,Muyinga
BI_NG,Africa,Eastern Africa,Burundi,Ngozi
BI_RT,Africa,Eastern Africa,Burundi,Rutana
BI_RY,Africa,Eastern Africa,Burundi,Ruyigi
BJ,Africa,Western Africa,Benin,All Regions
BJ_AK,Africa,Western Africa,Benin,Atacora
BJ_AL,Africa,Western Africa,Benin,Alibori
BJ_AQ,Africa,Western Africa,Benin,Atlantique
BJ_BO,Africa,Western Africa,Benin,Borgou
BJ_DO,Africa,Western Africa,Benin,Donga
BJ_LI,Africa,Western Africa,Benin,Littoral
BJ_MO,Africa,Western Africa,Benin,Mono
BJ_OU,Africa,Western Africa,Benin,Oueme
BJ_PL,Africa,Western Africa,Benin,Plateau
BJ_ZO,Africa,Western Africa,Benin,Zou
BM,America,Northern America,Bermuda,All Regions
BM_Hamilton,America,Northern America,Bermuda,Hamilton
BM_Saint_George,America,Northern America,Bermuda,Saint George
BN,Asia,South-Eastern Asia,Brunei Darussalam,All Regions
BN_BE,Asia,South-Eastern Asia,Brunei Darussalam,Belait
BN_BM,Asia,South-Eastern Asia,Brunei Darussalam,Brunei-Muara
BN_TE,Asia,South-Eastern Asia,Brunei Darussalam,Temburong
BN_TU,Asia,South-Eastern Asia,Brunei Darussalam,Tutong
BO,America,South America,Bolivia,All Regions
BO_B,America,South America,Bolivia,El Beni
BO_C,America,South America,Bolivia,Cochabamba
BO_H,America,South America,Bolivia,Chuquisaca
BO_L,America,South America,Bolivia,La Paz
BO_N,America,South America,Bolivia,Pando
BO_O,America,South America,Bolivia,Oruro
BO_P,America,South America,Bolivia,Potosi
BO_S,America,South America,Bolivia,Santa Cruz
BO_T,America,South America,Bolivia,Tarija
BQ,America,Caribbean,Bonaire,All Regions
BQ_BO,America,Caribbean,Bonaire,Bonaire
BQ_SA,America,Caribbean,Bonaire,Saba
BQ_SE,America,Caribbean,Bonaire,Sint Eustatius
BR,America,South America,Brazil,All Regions
BR_AC,America,South America,Brazil,Acre
BR_AL,America,South America,Brazil,Alagoas
BR_AM,America,South America,Brazil,Amazonas
BR_AP,America,South America,Brazil,Amapa
BR_BA,America,South America,Brazil,Bahia
BR_CE,America,South America,Brazil,Ceara
BR_DF,America,South America,Brazil,Distrito Federal
BR_ES,America,South America,Brazil,Espirito Santo
BR_GO,America,South America,Brazil,Goias
BR_MA,America,South America,Brazil,Maranhao
BR_MG,America,South America,Brazil,Minas Gerais
BR_MS,America,South America,Brazil,Mato Grosso do Sul
BR_MT,America,South America,Brazil,Mato Grosso
BR_PA,America,South America,Brazil,Para
BR_PB,America,South America,Brazil,Paraiba
BR_PE,America,South America,Brazil,Pernambuco
BR_PI,America,South America,Brazil,Piaui
BR_PR,America,South America,Brazil,Parana
BR_RJ,America,South America,Brazil,Rio de Janeiro
BR_RN,America,South America,Brazil,Rio Grande do Norte
BR_RO,America,South America,Brazil,Rondonia
BR_RR,America,South America,Brazil,Roraima
BR_RS,America,South America,Brazil,Rio Grande do Sul
BR_SC,America,South America,Brazil,Santa Catarina
BR_SE,America,South America,Brazil,Sergipe
BR_SP,America,South America,Brazil,Sao Paulo
BR_TO,America,South America,Brazil,Tocantins
BS,America,Caribbean,Bahamas,All Regions
BS_CS,America,Caribbean,Bahamas,Central Andros
BS_FP,America,Caribbean,Bahamas,City of Freeport
BS_HI,America,Caribbean,Bahamas,Harbour Island
BS_HT,America,Caribbean,Bahamas,Hope Town
BS_LI,America,Caribbean,Bahamas,Long Island
BS_New_Providence,America,Caribbean,Bahamas,New Providence
BS_SE,America,Caribbean,Bahamas,South Eleuthera
BT,Asia,Southern Asia,Bhutan,All Regions
BT_11,Asia,Southern Asia,Bhutan,Paro
BT_12,Asia,Southern Asia,Bhutan,Chhukha
BT_15,Asia,Southern Asia,Bhutan,Thimphu
BT_22,Asia,Southern Asia,Bhutan,Dagana
BT_23,Asia,Southern Asia,Bhutan,Punakha
BT_42,Asia,Southern Asia,Bhutan,Monggar
BT_GA,Asia,Southern Asia,Bhutan,Gasa
BT_TY,Asia,Southern Asia,Bhutan,Trashi Yangtse
BW,Africa,Southern Africa,Botswana,All Regions
BW_CE,Africa,Southern Africa,Botswana,Central
BW_KL,Africa,Southern Africa,Botswana,Kgatleng
BW_KW,Africa,Southern Africa,Botswana,Kweneng
BW_NE,Africa,Southern Africa,Botswana,North East
BW_NW,Africa,Southern Africa,Botswana,North West
BW_SE,Africa,Southern Africa,Botswana,South East
BY,Europe,Eastern Europe,Belarus,All Regions
BY_BR,Europe,Eastern Europe,Belarus,Brestskaya voblasts
BY_HO,Europe,Eastern Europe,Belarus,Homyelskaya voblasts
BY_HR,Europe,Eastern Europe,Belarus,Hrodzenskaya voblasts
BY_MA,Europe,Eastern Europe,Belarus,Mahilyowskaya voblasts
BY_MI,Europe,Eastern Europe,Belarus,Minskaya voblasts
BY_VI,Europe,Eastern Europe,Belarus,Vitsyebskaya voblasts
BZ,America,Central America,Belize,All Regions
BZ_BZ,America,Central America,Belize,Belize
BZ_CY,America,Central America,Belize,Cayo
BZ_CZL,America,Central America,Belize,Corozal
BZ_OW,America,Central America,Belize,Orange Walk
BZ_SC,America,Central America,Belize,Stann Creek
BZ_TOL,America,Central America,Belize,Toledo
CA,America,Northern America,Canada,All Regions
CA_AB,America,Northern America,Canada,Alberta
CA_BC,America,Northern America,Canada,British Columbia
CA_MB,America,Northern America,Canada,Manitoba
CA_NB,America,Northern America,Canada,New Brunswick
CA_NL,America,Northern America,Canada,Newfoundland and Labrador
CA_NS,America,Northern America,Canada,Nova Scotia
CA_NT,America,Northern America,Canada,Northwest Territories
CA_NU,America,Northern America,Canada,Nunavut
CA_ON,America,Northern America,Canada,Ontario
CA_PE,America,Northern America,Canada,Prince Edward Island
CA_QC,America,Northern America,Canada,Quebec
CA_SK,America,Northern America,Canada,Saskatchewan
CA_YT,America,Northern America,Canada,Yukon
CC,Oceania,Australia and New Zealand,Cocos (Keeling) Islands,All Regions
CD,Africa,Middle Africa,Democratic Republic of the Congo,All Regions
CD_BC,Africa,Middle Africa,Democratic Republic of the Congo,Kongo Central
CD_EQ,Africa,Middle Africa,Democratic Republic of the Congo,Equateur
CD_HK,Africa,Middle Africa,Democratic Republic of the Congo,Haut-Katanga
CD_HU,Africa,Middle Africa,Democratic Republic of the Congo,Haut-Uele
CD_IT,Africa,Middle Africa,Democratic Republic of the Congo,Ituri
CD_KC,Africa,Middle Africa,Democratic Republic of the Congo,Kasai Central
CD_KE,Africa,Middle Africa,Democratic Republic of the Congo,Kasai Oriental
CD_KL,Africa,Middle Africa,Democratic Republic of the Congo,Kwilu
CD_KN,Africa,Middle Africa,Democratic Republic of the Congo,Kinshasa
CD_LU,Africa,Middle Africa,Democratic Republic of the Congo,Lualaba
CD_MA,Africa,Middle Africa,Democratic Republic of the Congo,Maniema
CD_NK,Africa,Middle Africa,Democratic Republic of the Congo,Nord-Kivu
CD_NU,Africa,Middle Africa,Democratic Republic of the Congo,Nord-Ubangi
CD_SA,Africa,Middle Africa,Democratic Republic of the Congo,Sankuru
CD_SK,Africa,Middle Africa,Democratic Republic of the Congo,Sud-Kivu
CD_SU,Africa,Middle Africa,Democratic Republic of the Congo,Sud-Ubangi
CD_TA,Africa,Middle Africa,Democratic Republic of the Congo,Tanganyika
CD_TO,Africa,Middle Africa,Democratic Republic of the Congo,Tshopo
CD_TU,Africa,Middle Africa,Democratic Republic of the Congo,Tshuapa
CF,Africa,Middle Africa,Central African Republic,All Regions
CF_AC,Africa,Middle Africa,Central African Republic,Ouham
CF_BGF,Africa,Middle Africa,Central African Republic,Bangui
CF_HK,Africa,Middle Africa,Central African Republic,Haute-Kotto
CF_OP,Africa,Middle Africa,Central African Republic,Ouham-Pende
CG,Africa,Middle Africa,Congo,All Regions
CG_13,Africa,Middle Africa,Congo,Sangha
CG_15,Africa,Middle Africa,Congo,Cuvette-Ouest
CG_16,Africa,Middle Africa,Congo,Pointe-Noire
CG_8,Africa,Middle Africa,Congo,Cuvette
CG_BZV,Africa,Middle Africa,Congo,Brazzaville
CH,Europe,Western Europe,Switzerland,All Regions
CH_AG,Europe,Western Europe,Switzerland,Aargau
CH_AI,Europe,Western Europe,Switzerland,Appenzell Innerrhoden
CH_AR,Europe,Western Europe,Switzerland,Appenzell Ausserrhoden
CH_BE,Europe,Western Europe,Switzerland,Bern
CH_BL,Europe,Western Europe,Switzerland,Basel-Landschaft
CH_BS,Europe,Western Europe,Switzerland,Basel-Stadt
CH_FR,Europe,Western Europe,Switzerland,Fribourg
CH_GE,Europe,Western Europe,Switzerland,Geneve
CH_GL,Europe,Western Europe,Switzerland,Glarus
CH_GR,Europe,Western Europe,Switzerland,Graubunden
CH_JU,Europe,Western Europe,Switzerland,Jura
CH_LU,Europe,Western Europe,Switzerland,Luzern
CH_NE,Europe,Western Europe,Switzerland,Neuchatel
CH_NW,Europe,Western Europe,Switzerland,Nidwalden
CH_OW,Europe,Western Europe,Switzerland,Obwalden
CH_SG,Europe,Western Europe,Switzerland,Sankt Gallen
CH_SH,Europe,Western Europe,Switzerland,Schaffhausen
CH_SO,Europe,Western Europe,Switzerland,Solothurn
CH_SZ,Europe,Western Europe,Switzerland,Schwyz
CH_TG,Europe,Western Europe,Switzerland,Thurgau
CH_TI,Europe,Western Europe,Switzerland,Ticino
CH_UR,Europe,Western Europe,Switzerland,Uri
CH_VD,Europe,Western Europe,Switzerland,Vaud
CH_VS,Europe,Western Europe,Switzerland,Valais
CH_ZG,Europe,Western Europe,Switzerland,Zug
CH_ZH,Europe,Western Europe,Switzerland,Zurich
CI,Africa,Western Africa,Cote d'Ivoire,All Regions
CI_AB,Africa,Western Africa,Cote d'Ivoire,Abidjan
CI_BS,Africa,Western Africa,Cote d'Ivoire,Bas-Sassandra
CI_CM,Africa,Western Africa,Cote d'Ivoire,Comoe
CI_DN,Africa,Western Africa,Cote d'Ivoire,Denguele
CI_GD,Africa,Western Africa,Cote d'Ivoire,Goh-Djiboua
CI_LC,Africa,Western Africa,Cote d'Ivoire,Lacs
CI_LG,Africa,Western Africa,Cote d'Ivoire,Lagunes
CI_MG,Africa,Western Africa,Cote d'Ivoire,Montagnes
CI_SM,Africa,Western Africa,Cote d'Ivoire,Sassandra-Marahoue
CI_SV,Africa,Western Africa,Cote d'Ivoire,Savanes
CI_VB,Africa,Western Africa,Cote d'Ivoire,Vallee du Bandama
CI_WR,Africa,Western Africa,Cote d'Ivoire,Woroba
CI_ZZ,Africa,Western Africa,Cote d'Ivoire,Zanzan
CK,Oceania,Polynesia,Cook Islands,All Regions
CK_Cook_Islands,Oceania,Polynesia,Cook Islands,Cook Islands
CL,America,South America,Chile,All Regions
CL_AI,America,South America,Chile,Aisen del General Carlos Ibanez del Campo
CL_AN,America,South America,Chile,Antofagasta
CL_AP,America,South America,Chile,Arica y Parinacota
CL_AR,America,South America,Chile,La Araucania
CL_AT,America,South America,Chile,Atacama
CL_BI,America,South America,Chile,Biobio
CL_CO,America,South America,Chile,Coquimbo
CL_LI,America,South America,Chile,Libertador General Bernardo O'Higgins
CL_LL,America,South America,Chile,Los Lagos
CL_LR,America,South America,Chile,Los Rios
CL_MA,America,South America,Chile,Magallanes
CL_ML,America,South America,Chile,Maule
CL_RM,America,South America,Chile,Region Metropolitana de Santiago
CL_TA,America,South America,Chile,Tarapaca
CL_VS,America,South America,Chile,Valparaiso
CM,Africa,Middle Africa,Cameroon,All Regions
CM_AD,Africa,Middle Africa,Cameroon,Adamaoua
CM_CE,Africa,Middle Africa,Cameroon,Centre
CM_EN,Africa,Middle Africa,Cameroon,Extreme-Nord
CM_ES,Africa,Middle Africa,Cameroon,Est
CM_LT,Africa,Middle Africa,Cameroon,Littoral
CM_NO,Africa,Middle Africa,Cameroon,Nord
CM_NW,Africa,Middle Africa,Cameroon,Nord-Ouest
CM_OU,Africa,Middle Africa,Cameroon,Ouest
CM_SU,Africa,Middle Africa,Cameroon,Sud
CM_SW,Africa,Middle Africa,Cameroon,Sud-Ouest
CN,Asia,Eastern Asia,People's Republic of China,All Regions
CN_AH,Asia,Eastern Asia,People's Republic of China,Anhui
CN_BJ,Asia,Eastern Asia,People's Republic of China,Beijing
CN_CQ,Asia,Eastern Asia,People's Republic of China,Chongqing
CN_FJ,Asia,Eastern Asia,People's Republic of China,Fujian
CN_GD,Asia,Eastern Asia,People's Republic of China,Guangdong
CN_GS,Asia,Eastern Asia,People's Republic of China,Gansu
CN_GX,Asia,Eastern Asia,People's Republic of China,Guangxi
CN_GZ,Asia,Eastern Asia,People's Republic of China,Guizhou
CN_HA,Asia,Eastern Asia,People's Republic of China,Henan
CN_HB,Asia,Eastern Asia,People's Republic of China,Hubei
CN_HE,Asia,Eastern Asia,People's Republic of China,Hebei
CN_HI,Asia,Eastern Asia,People's Republic of China,Hainan
CN_HL,Asia,Eastern Asia,People's Republic of China,Heilongjiang
CN_HN,Asia,Eastern Asia,People's Republic of China,Hunan
CN_JL,Asia,Eastern Asia,People's Republic of China,Jilin
CN_JS,Asia,Eastern Asia,People's Republic of China,Jiangsu
CN_JX,Asia,Eastern Asia,People's Republic of China,Jiangxi
CN_LN,Asia,Eastern Asia,People's Republic of China,Liaoning
CN_NM,Asia,Eastern Asia,People's Republic of China,Nei Mongol
CN_NX,Asia,Eastern Asia,People's Republic of China,Ningxia
CN_QH,Asia,Eastern Asia,People's Republic of China,Qinghai
CN_SC,Asia,Eastern Asia,People's Republic of China,Sichuan
CN_SD,Asia,Eastern Asia,People's Republic of China,Shandong
CN_SH,Asia,Eastern Asia,People's Republic of China,Shanghai
CN_SN,Asia,Eastern Asia,People's Republic of China,Shaanxi
CN_SX,Asia,Eastern Asia,People's Republic of China,Shanxi
CN_TJ,Asia,Eastern Asia,People's Republic of China,Tianjin
CN_XJ,Asia,Eastern Asia,People's Republic of China,Xinjiang
CN_XZ,Asia,Eastern Asia,People's Republic of China,Xizang
CN_YN,Asia,Eastern Asia,People's Republic of China,Yunnan
CN_ZJ,Asia,Eastern Asia,People's Republic of China,Zhejiang
CO,America,South America,Colombia,All Regions
CO_AMA,America,South America,Colombia,Amazonas
CO_ANT,America,South America,Colombia,Antioquia
CO_ARA,America,South America,Colombia,Arauca
CO_ATL,America,South America,Colombia,Atlantico
CO_BOL,America,South America,Colombia,Bolivar
CO_BOY,America,South America,Colombia,Boyaca
CO_CAL,America,South America,Colombia,Caldas
CO_CAQ,America,South America,Colombia,Caqueta
CO_CAS,America,South America,Colombia,Casanare
CO_CAU,America,South America,Colombia,Cauca
CO_CES,America,South America,Colombia,Cesar
CO_CHO,America,South America,Colombia,Choco
CO_COR,America,South America,Colombia,Cordoba
CO_CUN,America,South America,Colombia,Cundinamarca
CO_DC,America,South America,Colombia,Distrito Capital de Bogota
CO_GUA,America,South America,Colombia,Guainia
CO_GUV,America,South America,Colombia,Guaviare
CO_HUI,America,South America,Colombia,Huila
CO_LAG,America,South America,Colombia,La Guajira
CO_MAG,America,South America,Colombia,Magdalena
CO_MET,America,South America,Colombia,Meta
CO_NAR,America,South America,Colombia,Narino
CO_NSA,America,South America,Colombia,Norte de Santander
CO_PUT,America,South America,Colombia,Putumayo
CO_QUI,America,South America,Colombia,Quindio
CO_RIS,America,South America,Colombia,Risaralda
CO_SAN,America,South America,Colombia,Santander
CO_SAP,America,South America,Colombia,San Andres, Providencia y Santa Catalina
CO_SUC,America,South America,Colombia,Sucre
CO_TOL,America,South America,Colombia,Tolima
CO_VAC,America,South America,Colombia,Valle del Cauca
CO_VAU,America,South America,Colombia,Vaupes
CO_VID,America,South America,Colombia,Vichada
CR,America,Central America,Costa Rica,All Regions
CR_A,America,Central America,Costa Rica,Alajuela
CR_C,America,Central America,Costa Rica,Cartago
CR_G,America,Central America,Costa Rica,Guanacaste
CR_H,America,Central America,Costa Rica,Heredia
CR_L,America,Central America,Costa Rica,Limon
CR_P,America,Central America,Costa Rica,Puntarenas
CR_SJ,America,Central America,Costa Rica,San Jose
CU,America,Caribbean,Cuba,All Regions
CU_01,America,Caribbean,Cuba,Pinar del Rio
CU_03,America,Caribbean,Cuba,La Habana
CU_04,America,Caribbean,Cuba,Matanzas
CU_05,America,Caribbean,Cuba,Villa Clara
CU_06,America,Caribbean,Cuba,Cienfuegos
CU_07,America,Caribbean,Cuba,Sancti Spiritus
CU_08,America,Caribbean,Cuba,Ciego de Avila
CU_09,America,Caribbean,Cuba,Camaguey
CU_10,America,Caribbean,Cuba,Las Tunas
CU_11,America,Caribbean,Cuba,Holguin
CU_12,America,Caribbean,Cuba,Granma
CU_13,America,Caribbean,Cuba,Santiago de Cuba
CU_14,America,Caribbean,Cuba,Guantanamo
CU_15,America,Caribbean,Cuba,Artemisa
CU_16,America,Caribbean,Cuba,Mayabeque
CV,Africa,Western Africa,Cape Verde,All Regions
CV_BR,Africa,Western Africa,Cape Verde,Brava
CV_BV,Africa,Western Africa,Cape Verde,Boa Vista
CV_CA,Africa,Western Africa,Cape Verde,Santa Catarina
CV_PN,Africa,Western Africa,Cape Verde,Porto Novo
CV_PR,Africa,Western Africa,Cape Verde,Praia
CV_SD,Africa,Western Africa,Cape Verde,Sao Domingos
CV_SF,Africa,Western Africa,Cape Verde,Sao Filipe
CV_SL,Africa,Western Africa,Cape Verde,Sal
CV_SV,Africa,Western Africa,Cape Verde,Sao Vicente
CW,America,Caribbean,Curaçao,All Regions
CW_Curacao,America,Caribbean,Curaçao,Curacao
CX,Oceania,Australia and New Zealand,Christmas Island,All Regions
CX_Christmas_Island,Oceania,Australia and New Zealand,Christmas Island,Christmas Island
CY,Asia,Western Asia,Cyprus,All Regions
CY_01,Asia,Western Asia,Cyprus,Lefkosia
CY_02,Asia,Western Asia,Cyprus,Lemesos
CY_03,Asia,Western Asia,Cyprus,Larnaka
CY_04,Asia,Western Asia,Cyprus,Ammochostos
CY_05,Asia,Western Asia,Cyprus,Pafos
CY_06,Asia,Western Asia,Cyprus,Keryneia
CZ,Europe,Eastern Europe,Czech Republic,All Regions
CZ_10,Europe,Eastern Europe,Czech Republic,Praha, Hlavni mesto
CZ_63,Europe,Eastern Europe,Czech Republic,Kraj Vysocina
CZ_JC,Europe,Eastern Europe,Czech Republic,Jihocesky kraj
CZ_JM,Europe,Eastern Europe,Czech Republic,Jihomoravsky kraj
CZ_KA,Europe,Eastern Europe,Czech Republic,Karlovarsky kraj
CZ_KR,Europe,Eastern Europe,Czech Republic,Kralovehradecky kraj
CZ_LI,Europe,Eastern Europe,Czech Republic,Liberecky kraj
CZ_MO,Europe,Eastern Europe,Czech Republic,Moravskoslezsky kraj
CZ_OL,Europe,Eastern Europe,Czech Republic,Olomoucky kraj
CZ_PA,Europe,Eastern Europe,Czech Republic,Pardubicky kraj
CZ_PL,Europe,Eastern Europe,Czech Republic,Plzensky kraj
CZ_ST,Europe,Eastern Europe,Czech Republic,Stredocesky kraj
CZ_US,Europe,Eastern Europe,Czech Republic,Ustecky kraj
CZ_ZL,Europe,Eastern Europe,Czech Republic,Zlinsky kraj
DE,Europe,Western Europe,Germany,All Regions
DE_BB,Europe,Western Europe,Germany,Brandenburg
DE_BE,Europe,Western Europe,Germany,Berlin
DE_BW,Europe,Western Europe,Germany,Baden-Wurttemberg
DE_BY,Europe,Western Europe,Germany,Bayern
DE_HB,Europe,Western Europe,Germany,Bremen
DE_HE,Europe,Western Europe,Germany,Hessen
DE_HH,Europe,Western Europe,Germany,Hamburg
DE_MV,Europe,Western Europe,Germany,Mecklenburg-Vorpommern
DE_NI,Europe,Western Europe,Germany,Niedersachsen
DE_NW,Europe,Western Europe,Germany,Nordrhein-Westfalen
DE_RP,Europe,Western Europe,Germany,Rheinland-Pfalz
DE_SH,Europe,Western Europe,Germany,Schleswig-Holstein
DE_SL,Europe,Western Europe,Germany,Saarland
DE_SN,Europe,Western Europe,Germany,Sachsen
DE_ST,Europe,Western Europe,Germany,Sachsen-Anhalt
DE_TH,Europe,Western Europe,Germany,Thuringen
DJ,Africa,Eastern Africa,Djibouti,All Regions
DJ_AR,Africa,Eastern Africa,Djibouti,Arta
DJ_DJ,Africa,Eastern Africa,Djibouti,Djibouti
DK,Europe,Northern Europe,Denmark,All Regions
DK_81,Europe,Northern Europe,Denmark,Nordjylland
DK_82,Europe,Northern Europe,Denmark,Midtjylland
DK_83,Europe,Northern Europe,Denmark,Syddanmark
DK_84,Europe,Northern Europe,Denmark,Hovedstaden
DK_85,Europe,Northern Europe,Denmark,Sjelland
DM,America,Caribbean,Dominica,All Regions
DM_02,America,Caribbean,Dominica,Saint Andrew
DM_04,America,Caribbean,Dominica,Saint George
DM_05,America,Caribbean,Dominica,Saint John
DM_06,America,Caribbean,Dominica,Saint Joseph
DM_08,America,Caribbean,Dominica,Saint Mark
DM_10,America,Caribbean,Dominica,Saint Paul
DO,America,Caribbean,Dominican Republic,All Regions
DO_01,America,Caribbean,Dominican Republic,Distrito Nacional (Santo Domingo)
DO_02,America,Caribbean,Dominican Republic,Azua
DO_03,America,Caribbean,Dominican Republic,Baoruco
DO_04,America,Caribbean,Dominican Republic,Barahona
DO_05,America,Caribbean,Dominican Republic,Dajabon
DO_06,America,Caribbean,Dominican Republic,Duarte
DO_07,America,Caribbean,Dominican Republic,Elias Pina
DO_08,America,Caribbean,Dominican Republic,El Seibo
DO_09,America,Caribbean,Dominican Republic,Espaillat
DO_10,America,Caribbean,Dominican Republic,Independencia
DO_11,America,Caribbean,Dominican Republic,La Altagracia
DO_12,America,Caribbean,Dominican Republic,La Romana
DO_13,America,Caribbean,Dominican Republic,La Vega
DO_14,America,Caribbean,Dominican Republic,Maria Trinidad Sanchez
DO_15,America,Caribbean,Dominican Republic,Monte Cristi
DO_17,America,Caribbean,Dominican Republic,Peravia
DO_18,America,Caribbean,Dominican Republic,Puerto Plata
DO_19,America,Caribbean,Dominican Republic,Hermanas Mirabal
DO_20,America,Caribbean,Dominican Republic,Samana
DO_21,America,Caribbean,Dominican Republic,San Cristobal
DO_22,America,Caribbean,Dominican Republic,San Juan
DO_23,America,Caribbean,Dominican Republic,San Pedro de Macoris
DO_24,America,Caribbean,Dominican Republic,Sanchez Ramirez
DO_25,America,Caribbean,Dominican Republic,Santiago
DO_26,America,Caribbean,Dominican Republic,Santiago Rodriguez
DO_27,America,Caribbean,Dominican Republic,Valverde
DO_28,America,Caribbean,Dominican Republic,Monsenor Nouel
DO_29,America,Caribbean,Dominican Republic,Monte Plata
DO_30,America,Caribbean,Dominican Republic,Hato Mayor
DZ,Africa,Northern Africa,Algeria,All Regions
DZ_01,Africa,Northern Africa,Algeria,Adrar
DZ_02,Africa,Northern Africa,Algeria,Chlef
DZ_03,Africa,Northern Africa,Algeria,Laghouat
DZ_04,Africa,Northern Africa,Algeria,Oum el Bouaghi
DZ_05,Africa,Northern Africa,Algeria,Batna
DZ_06,Africa,Northern Africa,Algeria,Bejaia
DZ_07,Africa,Northern Africa,Algeria,Biskra
DZ_08,Africa,Northern Africa,Algeria,Bechar
DZ_09,Africa,Northern Africa,Algeria,Blida
DZ_10,Africa,Northern Africa,Algeria,Bouira
DZ_11,Africa,Northern Africa,Algeria,Tamanrasset
DZ_12,Africa,Northern Africa,Algeria,Tebessa
DZ_13,Africa,Northern Africa,Algeria,Tlemcen
DZ_14,Africa,Northern Africa,Algeria,Tiaret
DZ_15,Africa,Northern Africa,Algeria,Tizi Ouzou
DZ_16,Africa,Northern Africa,Algeria,Alger
DZ_17,Africa,Northern Africa,Algeria,Djelfa
DZ_19,Africa,Northern Africa,Algeria,Setif
DZ_20,Africa,Northern Africa,Algeria,Saida
DZ_21,Africa,Northern Africa,Algeria,Skikda
DZ_22,Africa,Northern Africa,Algeria,Sidi Bel Abbes
DZ_23,Africa,Northern Africa,Algeria,Annaba
DZ_24,Africa,Northern Africa,Algeria,Guelma
DZ_25,Africa,Northern Africa,Algeria,Constantine
DZ_26,Africa,Northern Africa,Algeria,Medea
DZ_27,Africa,Northern Africa,Algeria,Mostaganem
DZ_28,Africa,Northern Africa,Algeria,M'sila
DZ_29,Africa,Northern Africa,Algeria,Mascara
DZ_30,Africa,Northern Africa,Algeria,Ouargla
DZ_31,Africa,Northern Africa,Algeria,Oran
DZ_32,Africa,Northern Africa,Algeria,El Bayadh
DZ_33,Africa,Northern Africa,Algeria,Illizi
DZ_34,Africa,Northern Africa,Algeria,Bordj Bou Arreridj
DZ_35,Africa,Northern Africa,Algeria,Boumerdes
DZ_36,Africa,Northern Africa,Algeria,El Tarf
DZ_37,Africa,Northern Africa,Algeria,Tindouf
DZ_38,Africa,Northern Africa,Algeria,Tissemsilt
DZ_39,Africa,Northern Africa,Algeria,El Oued
DZ_40,Africa,Northern Africa,Algeria,Khenchela
DZ_41,Africa,Northern Africa,Algeria,Souk Ahras
DZ_42,Africa,Northern Africa,Algeria,Tipaza
DZ_43,Africa,Northern Africa,Algeria,Mila
DZ_44,Africa,Northern Africa,Algeria,Ain Defla
DZ_45,Africa,Northern Africa,Algeria,Naama
DZ_46,Africa,Northern Africa,Algeria,Ain Temouchent
DZ_47,Africa,Northern Africa,Algeria,Ghardaia
DZ_48,Africa,Northern Africa,Algeria,Relizane
EC,America,South America,Ecuador,All Regions
EC_A,America,South America,Ecuador,Azuay
EC_B,America,South America,Ecuador,Bolivar
EC_C,America,South America,Ecuador,Carchi
EC_D,America,South America,Ecuador,Orellana
EC_E,America,South America,Ecuador,Esmeraldas
EC_F,America,South America,Ecuador,Canar
EC_G,America,South America,Ecuador,Guayas
EC_H,America,South America,Ecuador,Chimborazo
EC_I,America,South America,Ecuador,Imbabura
EC_L,America,South America,Ecuador,Loja
EC_M,America,South America,Ecuador,Manabi
EC_N,America,South America,Ecuador,Napo
EC_O,America,South America,Ecuador,El Oro
EC_P,America,South America,Ecuador,Pichincha
EC_R,America,South America,Ecuador,Los Rios
EC_S,America,South America,Ecuador,Morona Santiago
EC_SE,America,South America,Ecuador,Santa Elena
EC_T,America,South America,Ecuador,Tungurahua
EC_U,America,South America,Ecuador,Sucumbios
EC_W,America,South America,Ecuador,Galapagos
EC_X,America,South America,Ecuador,Cotopaxi
EC_Y,America,South America,Ecuador,Pastaza
EC_Z,America,South America,Ecuador,Zamora Chinchipe
EE,Europe,Northern Europe,Estonia,All Regions
EE_37,Europe,Northern Europe,Estonia,Harjumaa
EE_39,Europe,Northern Europe,Estonia,Hiiumaa
EE_44,Europe,Northern Europe,Estonia,Ida-Virumaa
EE_49,Europe,Northern Europe,Estonia,Jogevamaa
EE_51,Europe,Northern Europe,Estonia,Jarvamaa
EE_57,Europe,Northern Europe,Estonia,Laanemaa
EE_59,Europe,Northern Europe,Estonia,Laane-Virumaa
EE_65,Europe,Northern Europe,Estonia,Polvamaa
EE_67,Europe,Northern Europe,Estonia,Parnumaa
EE_70,Europe,Northern Europe,Estonia,Raplamaa
EE_74,Europe,Northern Europe,Estonia,Saaremaa
EE_78,Europe,Northern Europe,Estonia,Tartumaa
EE_82,Europe,Northern Europe,Estonia,Valgamaa
EE_84,Europe,Northern Europe,Estonia,Viljandimaa
EE_86,Europe,Northern Europe,Estonia,Vorumaa
EG,Africa,Northern Africa,Egypt,All Regions
EG_ALX,Africa,Northern Africa,Egypt,Al Iskandariyah
EG_ASN,Africa,Northern Africa,Egypt,Aswan
EG_AST,Africa,Northern Africa,Egypt,Asyut
EG_BA,Africa,Northern Africa,Egypt,Al Bahr al Ahmar
EG_BH,Africa,Northern Africa,Egypt,Al Buhayrah
EG_BNS,Africa,Northern Africa,Egypt,Bani Suwayf
EG_C,Africa,Northern Africa,Egypt,Al Qahirah
EG_DK,Africa,Northern Africa,Egypt,Ad Daqahliyah
EG_DT,Africa,Northern Africa,Egypt,Dumyat
EG_FYM,Africa,Northern Africa,Egypt,Al Fayyum
EG_GH,Africa,Northern Africa,Egypt,Al Gharbiyah
EG_GZ,Africa,Northern Africa,Egypt,Al Jizah
EG_IS,Africa,Northern Africa,Egypt,Al Isma'iliyah
EG_JS,Africa,Northern Africa,Egypt,Janub Sina'
EG_KB,Africa,Northern Africa,Egypt,Al Qalyubiyah
EG_KFS,Africa,Northern Africa,Egypt,Kafr ash Shaykh
EG_KN,Africa,Northern Africa,Egypt,Qina
EG_LX,Africa,Northern Africa,Egypt,Al Uqsur
EG_MN,Africa,Northern Africa,Egypt,Al Minya
EG_MNF,Africa,Northern Africa,Egypt,Al Minufiyah
EG_MT,Africa,Northern Africa,Egypt,Matruh
EG_PTS,Africa,Northern Africa,Egypt,Bur Sa'id
EG_SHG,Africa,Northern Africa,Egypt,Suhaj
EG_SHR,Africa,Northern Africa,Egypt,Ash Sharqiyah
EG_SIN,Africa,Northern Africa,Egypt,Shamal Sina'
EG_SUZ,Africa,Northern Africa,Egypt,As Suways
EG_WAD,Africa,Northern Africa,Egypt,Al Wadi al Jadid
EH,Africa,Northern Africa,Western Sahara,All Regions
ER,Africa,Eastern Africa,Eritrea,All Regions
ER_MA,Africa,Eastern Africa,Eritrea,Al Awsat
ES,Europe,Southern Europe,Spain,All Regions
ES_AN,Europe,Southern Europe,Spain,Andalucia
ES_AR,Europe,Southern Europe,Spain,Aragon
ES_AS,Europe,Southern Europe,Spain,Asturias, Principado de
ES_CB,Europe,Southern Europe,Spain,Cantabria
ES_CE,Europe,Southern Europe,Spain,Ceuta
ES_CL,Europe,Southern Europe,Spain,Castilla y Leon
ES_CM,Europe,Southern Europe,Spain,Castilla-La Mancha
ES_CN,Europe,Southern Europe,Spain,Canarias
ES_CT,Europe,Southern Europe,Spain,Catalunya
ES_EX,Europe,Southern Europe,Spain,Extremadura
ES_GA,Europe,Southern Europe,Spain,Galicia
ES_IB,Europe,Southern Europe,Spain,Illes Balears
ES_MC,Europe,Southern Europe,Spain,Murcia, Region de
ES_MD,Europe,Southern Europe,Spain,Madrid, Comunidad de
ES_ML,Europe,Southern Europe,Spain,Melilla
ES_NC,Europe,Southern Europe,Spain,Navarra, Comunidad Foral de
ES_PV,Europe,Southern Europe,Spain,Pais Vasco
ES_RI,Europe,Southern Europe,Spain,La Rioja
ES_VC,Europe,Southern Europe,Spain,Valenciana, Comunidad
ET,Africa,Eastern Africa,Ethiopia,All Regions
ET_AA,Africa,Eastern Africa,Ethiopia,Adis Abeba
ET_AF,Africa,Eastern Africa,Ethiopia,Afar
ET_AM,Africa,Eastern Africa,Ethiopia,Amara
ET_BE,Africa,Eastern Africa,Ethiopia,Binshangul Gumuz
ET_GA,Africa,Eastern Africa,Ethiopia,Gambela Hizboch
ET_HA,Africa,Eastern Africa,Ethiopia,Hareri Hizb
ET_OR,Africa,Eastern Africa,Ethiopia,Oromiya
ET_SN,Africa,Eastern Africa,Ethiopia,YeDebub Biheroch Bihereseboch na Hizboch
ET_SO,Africa,Eastern Africa,Ethiopia,Sumale
ET_TI,Africa,Eastern Africa,Ethiopia,Tigray
FI,Europe,Northern Europe,Finland,All Regions
FI_02,Europe,Northern Europe,Finland,Etela-Karjala
FI_03,Europe,Northern Europe,Finland,Etela-Pohjanmaa
FI_04,Europe,Northern Europe,Finland,Etela-Savo
FI_05,Europe,Northern Europe,Finland,Kainuu
FI_06,Europe,Northern Europe,Finland,Kanta-Hame
FI_07,Europe,Northern Europe,Finland,Keski-Pohjanmaa
FI_08,Europe,Northern Europe,Finland,Keski-Suomi
FI_09,Europe,Northern Europe,Finland,Kymenlaakso
FI_10,Europe,Northern Europe,Finland,Lappi
FI_11,Europe,Northern Europe,Finland,Pirkanmaa
FI_12,Europe,Northern Europe,Finland,Pohjanmaa
FI_13,Europe,Northern Europe,Finland,Pohjois-Karjala
FI_14,Europe,Northern Europe,Finland,Pohjois-Pohjanmaa
FI_15,Europe,Northern Europe,Finland,Pohjois-Savo
FI_16,Europe,Northern Europe,Finland,Paijat-Hame
FI_17,Europe,Northern Europe,Finland,Satakunta
FI_18,Europe,Northern Europe,Finland,Uusimaa
FI_19,Europe,Northern Europe,Finland,Varsinais-Suomi
FJ,Oceania,Melanesia,Fiji,All Regions
FJ_C,Oceania,Melanesia,Fiji,Central
FJ_N,Oceania,Melanesia,Fiji,Northern
FJ_W,Oceania,Melanesia,Fiji,Western
FK,America,South America,Falkland Islands (Malvinas),All Regions
FK_Falkland_Islands,America,South America,Falkland Islands (Malvinas),Falkland Islands
FM,Oceania,Micronesia,Micronesia (Federated States of),All Regions
FM_KSA,Oceania,Micronesia,Micronesia (Federated States of),Kosrae
FM_PNI,Oceania,Micronesia,Micronesia (Federated States of),Pohnpei
FM_TRK,Oceania,Micronesia,Micronesia (Federated States of),Chuuk
FM_YAP,Oceania,Micronesia,Micronesia (Federated States of),Yap
FO,Europe,Northern Europe,Faeroe Islands,All Regions
FO_Eysturoy,Europe,Northern Europe,Faeroe Islands,Eysturoy
FO_Nordoyar,Europe,Northern Europe,Faeroe Islands,Nordoyar
FO_Streymoy,Europe,Northern Europe,Faeroe Islands,Streymoy
FO_Suduroy,Europe,Northern Europe,Faeroe Islands,Suduroy
FO_Vagar,Europe,Northern Europe,Faeroe Islands,Vagar
FR,Europe,Western Europe,France,All Regions
FR_ARA,Europe,Western Europe,France,Auvergne-Rhone-Alpes
FR_BFC,Europe,Western Europe,France,Bourgogne-Franche-Comte
FR_CVL,Europe,Western Europe,France,Centre-Val de Loire
FR_E,Europe,Western Europe,France,Bretagne
FR_GES,Europe,Western Europe,France,Grand-Est
FR_H,Europe,Western Europe,France,Corse
FR_HDF,Europe,Western Europe,France,Hauts-de-France
FR_J,Europe,Western Europe,France,Ile-de-France
FR_NAQ,Europe,Western Europe,France,Nouvelle-Aquitaine
FR_NOR,Europe,Western Europe,France,Normandie
FR_OCC,Europe,Western Europe,France,Occitanie
FR_PAC,Europe,Western Europe,France,Provence-Alpes-Cote d'Azur
FR_R,Europe,Western Europe,France,Pays-de-la-Loire
GA,Africa,Middle Africa,Gabon,All Regions
GA_1,Africa,Middle Africa,Gabon,Estuaire
GA_2,Africa,Middle Africa,Gabon,Haut-Ogooue
GA_3,Africa,Middle Africa,Gabon,Moyen-Ogooue
GA_4,Africa,Middle Africa,Gabon,Ngounie
GA_6,Africa,Middle Africa,Gabon,Ogooue-Ivindo
GA_7,Africa,Middle Africa,Gabon,Ogooue-Lolo
GA_8,Africa,Middle Africa,Gabon,Ogooue-Maritime
GA_9,Africa,Middle Africa,Gabon,Woleu-Ntem
GB,Europe,Northern Europe,United Kingdom,All Regions
GB_ENG,Europe,Northern Europe,United Kingdom,England
GB_NIR,Europe,Northern Europe,United Kingdom,Northern Ireland
GB_SCT,Europe,Northern Europe,United Kingdom,Scotland
GB_WLS,Europe,Northern Europe,United Kingdom,Wales
GD,America,Caribbean,Grenada,All Regions
GD_01,America,Caribbean,Grenada,Saint Andrew
GD_02,America,Caribbean,Grenada,Saint David
GD_03,America,Caribbean,Grenada,Saint George
GD_04,America,Caribbean,Grenada,Saint John
GD_05,America,Caribbean,Grenada,Saint Mark
GD_06,America,Caribbean,Grenada,Saint Patrick
GE,Asia,Western Asia,Georgia,All Regions
GE_AB,Asia,Western Asia,Georgia,Abkhazia
GE_AJ,Asia,Western Asia,Georgia,Ajaria
GE_GU,Asia,Western Asia,Georgia,Guria
GE_IM,Asia,Western Asia,Georgia,Imereti
GE_KA,Asia,Western Asia,Georgia,K'akheti
GE_KK,Asia,Western Asia,Georgia,Kvemo Kartli
GE_MM,Asia,Western Asia,Georgia,Mtskheta-Mtianeti
GE_RL,Asia,Western Asia,Georgia,Rach'a-Lechkhumi-Kvemo Svaneti
GE_SJ,Asia,Western Asia,Georgia,Samtskhe-Javakheti
GE_SK,Asia,Western Asia,Georgia,Shida Kartli
GE_SZ,Asia,Western Asia,Georgia,Samegrelo-Zemo Svaneti
GE_TB,Asia,Western Asia,Georgia,Tbilisi
GF,America,South America,French Guiana,All Regions
GF_Guyane,America,South America,French Guiana,Guyane
GH,Africa,Western Africa,Ghana,All Regions
GH_AA,Africa,Western Africa,Ghana,Greater Accra
GH_AH,Africa,Western Africa,Ghana,Ashanti
GH_BA,Africa,Western Africa,Ghana,Brong-Ahafo
GH_CP,Africa,Western Africa,Ghana,Central
GH_EP,Africa,Western Africa,Ghana,Eastern
GH_NP,Africa,Western Africa,Ghana,Northern
GH_TV,Africa,Western Africa,Ghana,Volta
GH_UE,Africa,Western Africa,Ghana,Upper East
GH_WP,Africa,Western Africa,Ghana,Western
GI,Europe,Southern Europe,Gibraltar,All Regions
GI_Gibraltar,Europe,Southern Europe,Gibraltar,Gibraltar
GL,America,Northern America,Greenland,All Regions
GL_KU,America,Northern America,Greenland,Kommune Kujalleq
GL_QE,America,Northern America,Greenland,Qeqqata Kommunia
GL_SM,America,Northern America,Greenland,Kommuneqarfik Sermersooq
GM,Africa,Western Africa,Gambia,All Regions
GM_B,Africa,Western Africa,Gambia,Banjul
GM_L,Africa,Western Africa,Gambia,Lower River
GM_M,Africa,Western Africa,Gambia,Central River
GM_N,Africa,Western Africa,Gambia,North Bank
GM_U,Africa,Western Africa,Gambia,Upper River
GM_W,Africa,Western Africa,Gambia,Western
GN,Africa,Western Africa,Guinea,All Regions
GN_B,Africa,Western Africa,Guinea,Boke
GN_C,Africa,Western Africa,Guinea,Conakry
GN_CO,Africa,Western Africa,Guinea,Coyah
GN_DB,Africa,Western Africa,Guinea,Dabola
GN_DL,Africa,Western Africa,Guinea,Dalaba
GN_DU,Africa,Western Africa,Guinea,Dubreka
GN_GU,Africa,Western Africa,Guinea,Guekedou
GN_K,Africa,Western Africa,Guinea,Kankan
GN_KS,Africa,Western Africa,Guinea,Kissidougou
GN_L,Africa,Western Africa,Guinea,Labe
GN_MC,Africa,Western Africa,Guinea,Macenta
GN_N,Africa,Western Africa,Guinea,Nzerekore
GN_PI,Africa,Western Africa,Guinea,Pita
GN_SI,Africa,Western Africa,Guinea,Siguiri
GP,America,Caribbean,Guadeloupe,All Regions
GP_Guadeloupe,America,Caribbean,Guadeloupe,Guadeloupe
GQ,Africa,Middle Africa,Equatorial Guinea,All Regions
GQ_BN,Africa,Middle Africa,Equatorial Guinea,Bioko Norte
GQ_BS,Africa,Middle Africa,Equatorial Guinea,Bioko Sur
GQ_LI,Africa,Middle Africa,Equatorial Guinea,Litoral
GQ_WN,Africa,Middle Africa,Equatorial Guinea,Wele-Nzas
GR,Europe,Southern Europe,Greece,All Regions
GR_A,Europe,Southern Europe,Greece,Anatoliki Makedonia kai Thraki
GR_B,Europe,Southern Europe,Greece,Kentriki Makedonia
GR_C,Europe,Southern Europe,Greece,Dytiki Makedonia
GR_D,Europe,Southern Europe,Greece,Ipeiros
GR_E,Europe,Southern Europe,Greece,Thessalia
GR_F,Europe,Southern Europe,Greece,Ionia Nisia
GR_G,Europe,Southern Europe,Greece,Dytiki Ellada
GR_H,Europe,Southern Europe,Greece,Sterea Ellada
GR_I,Europe,Southern Europe,Greece,Attiki
GR_J,Europe,Southern Europe,Greece,Peloponnisos
GR_K,Europe,Southern Europe,Greece,Voreio Aigaio
GR_L,Europe,Southern Europe,Greece,Notio Aigaio
GR_M,Europe,Southern Europe,Greece,Kriti
GT,America,Central America,Guatemala,All Regions
GT_AV,America,Central America,Guatemala,Alta Verapaz
GT_BV,America,Central America,Guatemala,Baja Verapaz
GT_CM,America,Central America,Guatemala,Chimaltenango
GT_CQ,America,Central America,Guatemala,Chiquimula
GT_ES,America,Central America,Guatemala,Escuintla
GT_GU,America,Central America,Guatemala,Guatemala
GT_HU,America,Central America,Guatemala,Huehuetenango
GT_IZ,America,Central America,Guatemala,Izabal
GT_JA,America,Central America,Guatemala,Jalapa
GT_JU,America,Central America,Guatemala,Jutiapa
GT_PE,America,Central America,Guatemala,Peten
GT_PR,America,Central America,Guatemala,El Progreso
GT_QC,America,Central America,Guatemala,Quiche
GT_QZ,America,Central America,Guatemala,Quetzaltenango
GT_RE,America,Central America,Guatemala,Retalhuleu
GT_SA,America,Central America,Guatemala,Sacatepequez
GT_SM,America,Central America,Guatemala,San Marcos
GT_SO,America,Central America,Guatemala,Solola
GT_SR,America,Central America,Guatemala,Santa Rosa
GT_SU,America,Central America,Guatemala,Suchitepequez
GT_TO,America,Central America,Guatemala,Totonicapan
GT_ZA,America,Central America,Guatemala,Zacapa
GU,Oceania,Micronesia,Guam,All Regions
GU_Agana,Oceania,Micronesia,Guam,Agana Heights Municipality
GU_Agat,Oceania,Micronesia,Guam,Agat Municipality
GU_Asan,Oceania,Micronesia,Guam,Asan-Maina Municipality
GU_Barrigada,Oceania,Micronesia,Guam,Barrigada Municipality
GU_Chalan,Oceania,Micronesia,Guam,Chalan Pago-Ordot Municipality
GU_Dededo,Oceania,Micronesia,Guam,Dededo Municipality
GU_Hagatna,Oceania,Micronesia,Guam,Hagatna Municipality
GU_Inarajan,Oceania,Micronesia,Guam,Inarajan Municipality
GU_Mangilao,Oceania,Micronesia,Guam,Mangilao Municipality
GU_Merizo,Oceania,Micronesia,Guam,Merizo Municipality
GU_Mongmong,Oceania,Micronesia,Guam,Mongmong-Toto-Maite Municipality
GU_Piti,Oceania,Micronesia,Guam,Piti Municipality
GU_Santa_Rita,Oceania,Micronesia,Guam,Santa Rita Municipality
GU_Sinajana,Oceania,Micronesia,Guam,Sinajana Municipality
GU_Talofofo,Oceania,Micronesia,Guam,Talofofo Municipality
GU_Tamuning_Tumon_Harmon,Oceania,Micronesia,Guam,Tamuning-Tumon-Harmon Municipality
GU_Yigo,Oceania,Micronesia,Guam,Yigo Municipality
GU_Yona,Oceania,Micronesia,Guam,Yona Municipality
GW,Africa,Western Africa,Guinea-Bissau,All Regions
GW_BS,Africa,Western Africa,Guinea-Bissau,Bissau
GW_GA,Africa,Western Africa,Guinea-Bissau,Gabu
GY,America,South America,Guyana,All Regions
GY_DE,America,South America,Guyana,Demerara-Mahaica
GY_EB,America,South America,Guyana,East Berbice-Corentyne
GY_ES,America,South America,Guyana,Essequibo Islands-West Demerara
GY_MA,America,South America,Guyana,Mahaica-Berbice
GY_PM,America,South America,Guyana,Pomeroon-Supenaam
GY_UD,America,South America,Guyana,Upper Demerara-Berbice
HK,Asia,Eastern Asia,Hong Kong,All Regions
HK_Hong_Kong_SAR,Asia,Eastern Asia,Hong Kong,Hong Kong (SAR)
HN,America,Central America,Honduras,All Regions
HN_AT,America,Central America,Honduras,Atlantida
HN_CH,America,Central America,Honduras,Choluteca
HN_CL,America,Central America,Honduras,Colon
HN_CM,America,Central America,Honduras,Comayagua
HN_CP,America,Central America,Honduras,Copan
HN_CR,America,Central America,Honduras,Cortes
HN_EP,America,Central America,Honduras,El Paraiso
HN_FM,America,Central America,Honduras,Francisco Morazan
HN_IB,America,Central America,Honduras,Islas de la Bahia
HN_IN,America,Central America,Honduras,Intibuca
HN_LE,America,Central America,Honduras,Lempira
HN_LP,America,Central America,Honduras,La Paz
HN_OC,America,Central America,Honduras,Ocotepeque
HN_OL,America,Central America,Honduras,Olancho
HN_SB,America,Central America,Honduras,Santa Barbara
HN_VA,America,Central America,Honduras,Valle
HN_YO,America,Central America,Honduras,Yoro
HR,Europe,Southern Europe,Croatia,All Regions
HR_01,Europe,Southern Europe,Croatia,Zagrebacka zupanija
HR_02,Europe,Southern Europe,Croatia,Krapinsko-zagorska zupanija
HR_03,Europe,Southern Europe,Croatia,Sisacko-moslavacka zupanija
HR_04,Europe,Southern Europe,Croatia,Karlovacka zupanija
HR_05,Europe,Southern Europe,Croatia,Varazdinska zupanija
HR_06,Europe,Southern Europe,Croatia,Koprivnicko-krizevacka zupanija
HR_07,Europe,Southern Europe,Croatia,Bjelovarsko-bilogorska zupanija
HR_08,Europe,Southern Europe,Croatia,Primorsko-goranska zupanija
HR_09,Europe,Southern Europe,Croatia,Licko-senjska zupanija
HR_10,Europe,Southern Europe,Croatia,Viroviticko-podravska zupanija
HR_11,Europe,Southern Europe,Croatia,Pozesko-slavonska zupanija
HR_12,Europe,Southern Europe,Croatia,Brodsko-posavska zupanija
HR_13,Europe,Southern Europe,Croatia,Zadarska zupanija
HR_14,Europe,Southern Europe,Croatia,Osjecko-baranjska zupanija
HR_15,Europe,Southern Europe,Croatia,Sibensko-kninska zupanija
HR_16,Europe,Southern Europe,Croatia,Vukovarsko-srijemska zupanija
HR_17,Europe,Southern Europe,Croatia,Splitsko-dalmatinska zupanija
HR_18,Europe,Southern Europe,Croatia,Istarska zupanija
HR_19,Europe,Southern Europe,Croatia,Dubrovacko-neretvanska zupanija
HR_20,Europe,Southern Europe,Croatia,Medimurska zupanija
HR_21,Europe,Southern Europe,Croatia,Grad Zagreb
HT,America,Caribbean,Haiti,All Regions
HT_AR,America,Caribbean,Haiti,Artibonite
HT_CE,America,Caribbean,Haiti,Centre
HT_GA,America,Caribbean,Haiti,Grande'Anse
HT_ND,America,Caribbean,Haiti,Nord
HT_NE,America,Caribbean,Haiti,Nord-Est
HT_NI,America,Caribbean,Haiti,Nippes
HT_NO,America,Caribbean,Haiti,Nord-Ouest
HT_OU,America,Caribbean,Haiti,Ouest
HT_SD,America,Caribbean,Haiti,Sud
HT_SE,America,Caribbean,Haiti,Sud-Est
HU,Europe,Eastern Europe,Hungary,All Regions
HU_BA,Europe,Eastern Europe,Hungary,Baranya
HU_BE,Europe,Eastern Europe,Hungary,Bekes
HU_BK,Europe,Eastern Europe,Hungary,Bacs-Kiskun
HU_BU,Europe,Eastern Europe,Hungary,Budapest
HU_BZ,Europe,Eastern Europe,Hungary,Borsod-Abauj-Zemplen
HU_CS,Europe,Eastern Europe,Hungary,Csongrad
HU_FE,Europe,Eastern Europe,Hungary,Fejer
HU_GS,Europe,Eastern Europe,Hungary,Gyor-Moson-Sopron
HU_HB,Europe,Eastern Europe,Hungary,Hajdu-Bihar
HU_HE,Europe,Eastern Europe,Hungary,Heves
HU_JN,Europe,Eastern Europe,Hungary,Jasz-Nagykun-Szolnok
HU_KE,Europe,Eastern Europe,Hungary,Komarom-Esztergom
HU_NO,Europe,Eastern Europe,Hungary,Nograd
HU_PE,Europe,Eastern Europe,Hungary,Pest
HU_SO,Europe,Eastern Europe,Hungary,Somogy
HU_SZ,Europe,Eastern Europe,Hungary,Szabolcs-Szatmar-Bereg
HU_TO,Europe,Eastern Europe,Hungary,Tolna
HU_VA,Europe,Eastern Europe,Hungary,Vas
HU_VM,Europe,Eastern Europe,Hungary,Veszprem
HU_ZA,Europe,Eastern Europe,Hungary,Zala
ID,Asia,South-Eastern Asia,Indonesia,All Regions
ID_AC,Asia,South-Eastern Asia,Indonesia,Aceh
ID_BA,Asia,South-Eastern Asia,Indonesia,Bali
ID_BB,Asia,South-Eastern Asia,Indonesia,Kepulauan Bangka Belitung
ID_BE,Asia,South-Eastern Asia,Indonesia,Bengkulu
ID_BT,Asia,South-Eastern Asia,Indonesia,Banten
ID_GO,Asia,South-Eastern Asia,Indonesia,Gorontalo
ID_JA,Asia,South-Eastern Asia,Indonesia,Jambi
ID_JB,Asia,South-Eastern Asia,Indonesia,Jawa Barat
ID_JI,Asia,South-Eastern Asia,Indonesia,Jawa Timur
ID_JK,Asia,South-Eastern Asia,Indonesia,Jakarta Raya
ID_JT,Asia,South-Eastern Asia,Indonesia,Jawa Tengah
ID_KB,Asia,South-Eastern Asia,Indonesia,Kalimantan Barat
ID_KI,Asia,South-Eastern Asia,Indonesia,Kalimantan Timur
ID_KR,Asia,South-Eastern Asia,Indonesia,Kepulauan Riau
ID_KS,Asia,South-Eastern Asia,Indonesia,Kalimantan Selatan
ID_KT,Asia,South-Eastern Asia,Indonesia,Kalimantan Tengah
ID_LA,Asia,South-Eastern Asia,Indonesia,Lampung
ID_ML,Asia,South-Eastern Asia,Indonesia,Maluku
ID_MU,Asia,South-Eastern Asia,Indonesia,Maluku Utara
ID_NB,Asia,South-Eastern Asia,Indonesia,Nusa Tenggara Barat
ID_NT,Asia,South-Eastern Asia,Indonesia,Nusa Tenggara Timur
ID_PB,Asia,South-Eastern Asia,Indonesia,Papua Barat
ID_PP,Asia,South-Eastern Asia,Indonesia,Papua
ID_RI,Asia,South-Eastern Asia,Indonesia,Riau
ID_SA,Asia,South-Eastern Asia,Indonesia,Sulawesi Utara
ID_SB,Asia,South-Eastern Asia,Indonesia,Sumatera Barat
ID_SG,Asia,South-Eastern Asia,Indonesia,Sulawesi Tenggara
ID_SN,Asia,South-Eastern Asia,Indonesia,Sulawesi Selatan
ID_SR,Asia,South-Eastern Asia,Indonesia,Sulawesi Barat
ID_SS,Asia,South-Eastern Asia,Indonesia,Sumatera Selatan
ID_ST,Asia,South-Eastern Asia,Indonesia,Sulawesi Tengah
ID_SU,Asia,South-Eastern Asia,Indonesia,Sumatera Utara
ID_YO,Asia,South-Eastern Asia,Indonesia,Yogyakarta
IE,Europe,Northern Europe,Ireland,All Regions
IE_CE,Europe,Northern Europe,Ireland,Clare
IE_CN,Europe,Northern Europe,Ireland,Cavan
IE_CO,Europe,Northern Europe,Ireland,Cork
IE_CW,Europe,Northern Europe,Ireland,Carlow
IE_D,Europe,Northern Europe,Ireland,Dublin
IE_DL,Europe,Northern Europe,Ireland,Donegal
IE_G,Europe,Northern Europe,Ireland,Galway
IE_KE,Europe,Northern Europe,Ireland,Kildare
IE_KK,Europe,Northern Europe,Ireland,Kilkenny
IE_KY,Europe,Northern Europe,Ireland,Kerry
IE_LD,Europe,Northern Europe,Ireland,Longford
IE_LH,Europe,Northern Europe,Ireland,Louth
IE_LK,Europe,Northern Europe,Ireland,Limerick
IE_LM,Europe,Northern Europe,Ireland,Leitrim
IE_LS,Europe,Northern Europe,Ireland,Laois
IE_MH,Europe,Northern Europe,Ireland,Meath
IE_MN,Europe,Northern Europe,Ireland,Monaghan
IE_MO,Europe,Northern Europe,Ireland,Mayo
IE_OY,Europe,Northern Europe,Ireland,Offaly
IE_RN,Europe,Northern Europe,Ireland,Roscommon
IE_SO,Europe,Northern Europe,Ireland,Sligo
IE_TA,Europe,Northern Europe,Ireland,Tipperary
IE_WD,Europe,Northern Europe,Ireland,Waterford
IE_WH,Europe,Northern Europe,Ireland,Westmeath
IE_WW,Europe,Northern Europe,Ireland,Wicklow
IE_WX,Europe,Northern Europe,Ireland,Wexford
IL,Asia,Western Asia,Israel,All Regions
IL_D,Asia,Western Asia,Israel,HaDarom
IL_HA,Asia,Western Asia,Israel,Hefa
IL_JM,Asia,Western Asia,Israel,Yerushalayim
IL_M,Asia,Western Asia,Israel,HaMerkaz
IL_TA,Asia,Western Asia,Israel,Tel Aviv
IL_Z,Asia,Western Asia,Israel,HaTsafon
IM,Europe,Northern Europe,Isle of Man,All Regions
IM_Isle_of_Man,Europe,Northern Europe,Isle of Man,Isle of Man
IN,Asia,Southern Asia,India,All Regions
IN_AN,Asia,Southern Asia,India,Andaman and Nicobar Islands
IN_AP,Asia,Southern Asia,India,Andhra Pradesh
IN_AR,Asia,Southern Asia,India,Arunachal Pradesh
IN_AS,Asia,Southern Asia,India,Assam
IN_BR,Asia,Southern Asia,India,Bihar
IN_CH,Asia,Southern Asia,India,Chandigarh
IN_CT,Asia,Southern Asia,India,Chhattisgarh
IN_DD,Asia,Southern Asia,India,Daman and Diu
IN_DL,Asia,Southern Asia,India,Delhi
IN_DN,Asia,Southern Asia,India,Dadra and Nagar Haveli
IN_GA,Asia,Southern Asia,India,Goa
IN_GJ,Asia,Southern Asia,India,Gujarat
IN_HP,Asia,Southern Asia,India,Himachal Pradesh
IN_HR,Asia,Southern Asia,India,Haryana
IN_JH,Asia,Southern Asia,India,Jharkhand
IN_JK,Asia,Southern Asia,India,Jammu and Kashmir
IN_KA,Asia,Southern Asia,India,Karnataka
IN_KL,Asia,Southern Asia,India,Kerala
IN_LD,Asia,Southern Asia,India,Lakshadweep
IN_MH,Asia,Southern Asia,India,Maharashtra
IN_ML,Asia,Southern Asia,India,Meghalaya
IN_MN,Asia,Southern Asia,India,Manipur
IN_MP,Asia,Southern Asia,India,Madhya Pradesh
IN_MZ,Asia,Southern Asia,India,Mizoram
IN_NL,Asia,Southern Asia,India,Nagaland
IN_OR,Asia,Southern Asia,India,Odisha
IN_PB,Asia,Southern Asia,India,Punjab
IN_PY,Asia,Southern Asia,India,Puducherry
IN_RJ,Asia,Southern Asia,India,Rajasthan
IN_SK,Asia,Southern Asia,India,Sikkim
IN_TG,Asia,Southern Asia,India,Telangana
IN_TN,Asia,Southern Asia,India,Tamil Nadu
IN_TR,Asia,Southern Asia,India,Tripura
IN_UP,Asia,Southern Asia,India,Uttar Pradesh
IN_UT,Asia,Southern Asia,India,Uttarakhand
IN_WB,Asia,Southern Asia,India,West Bengal
IQ,Asia,Western Asia,Iraq,All Regions
IQ_AN,Asia,Western Asia,Iraq,Al Anbar
IQ_AR,Asia,Western Asia,Iraq,Arbil
IQ_BA,Asia,Western Asia,Iraq,Al Basrah
IQ_BB,Asia,Western Asia,Iraq,Babil
IQ_BG,Asia,Western Asia,Iraq,Baghdad
IQ_DA,Asia,Western Asia,Iraq,Dahuk
IQ_DI,Asia,Western Asia,Iraq,Diyala
IQ_DQ,Asia,Western Asia,Iraq,Dhi Qar
IQ_KA,Asia,Western Asia,Iraq,Karbala'
IQ_KI,Asia,Western Asia,Iraq,Kirkuk
IQ_MA,Asia,Western Asia,Iraq,Maysan
IQ_MU,Asia,Western Asia,Iraq,Al Muthanna
IQ_NA,Asia,Western Asia,Iraq,An Najaf
IQ_NI,Asia,Western Asia,Iraq,Ninawa
IQ_QA,Asia,Western Asia,Iraq,Al Qadisiyah
IQ_SD,Asia,Western Asia,Iraq,Salah ad Din
IQ_SU,Asia,Western Asia,Iraq,As Sulaymaniyah
IQ_WA,Asia,Western Asia,Iraq,Wasit
IR,Asia,Southern Asia,Iran,All Regions
IR_01,Asia,Southern Asia,Iran,Azarbayjan-e Sharqi
IR_02,Asia,Southern Asia,Iran,Azarbayjan-e Gharbi
IR_03,Asia,Southern Asia,Iran,Ardabil
IR_04,Asia,Southern Asia,Iran,Esfahan
IR_05,Asia,Southern Asia,Iran,Ilam
IR_06,Asia,Southern Asia,Iran,Bushehr
IR_07,Asia,Southern Asia,Iran,Tehran
IR_08,Asia,Southern Asia,Iran,Chahar Mahal va Bakhtiari
IR_10,Asia,Southern Asia,Iran,Khuzestan
IR_11,Asia,Southern Asia,Iran,Zanjan
IR_12,Asia,Southern Asia,Iran,Semnan
IR_13,Asia,Southern Asia,Iran,Sistan va Baluchestan
IR_14,Asia,Southern Asia,Iran,Fars
IR_15,Asia,Southern Asia,Iran,Kerman
IR_16,Asia,Southern Asia,Iran,Kordestan
IR_17,Asia,Southern Asia,Iran,Kermanshah
IR_18,Asia,Southern Asia,Iran,Kohgiluyeh va Bowyer Ahmad
IR_19,Asia,Southern Asia,Iran,Gilan
IR_20,Asia,Southern Asia,Iran,Lorestan
IR_21,Asia,Southern Asia,Iran,Mazandaran
IR_22,Asia,Southern Asia,Iran,Markazi
IR_23,Asia,Southern Asia,Iran,Hormozgan
IR_24,Asia,Southern Asia,Iran,Hamadan
IR_25,Asia,Southern Asia,Iran,Yazd
IR_26,Asia,Southern Asia,Iran,Qom
IR_27,Asia,Southern Asia,Iran,Golestan
IR_28,Asia,Southern Asia,Iran,Qazvin
IR_29,Asia,Southern Asia,Iran,Khorasan-e Jonubi
IR_30,Asia,Southern Asia,Iran,Khorasan-e Razavi
IR_31,Asia,Southern Asia,Iran,Khorasan-e Shomali
IR_32,Asia,Southern Asia,Iran,Alborz
IS,Europe,Northern Europe,Iceland,All Regions
IS_1,Europe,Northern Europe,Iceland,Hofudborgarsvaedi
IS_2,Europe,Northern Europe,Iceland,Sudurnes
IS_3,Europe,Northern Europe,Iceland,Vesturland
IS_4,Europe,Northern Europe,Iceland,Vestfirdir
IS_5,Europe,Northern Europe,Iceland,Nordurland vestra
IS_6,Europe,Northern Europe,Iceland,Nordurland eystra
IS_7,Europe,Northern Europe,Iceland,Austurland
IS_8,Europe,Northern Europe,Iceland,Sudurland
IT,Europe,Southern Europe,Italy,All Regions
IT_21,Europe,Southern Europe,Italy,Piemonte
IT_23,Europe,Southern Europe,Italy,Valle d'Aosta
IT_25,Europe,Southern Europe,Italy,Lombardia
IT_32,Europe,Southern Europe,Italy,Trentino-Alto Adige
IT_34,Europe,Southern Europe,Italy,Veneto
IT_36,Europe,Southern Europe,Italy,Friuli-Venezia Giulia
IT_42,Europe,Southern Europe,Italy,Liguria
IT_45,Europe,Southern Europe,Italy,Emilia-Romagna
IT_52,Europe,Southern Europe,Italy,Toscana
IT_55,Europe,Southern Europe,Italy,Umbria
IT_57,Europe,Southern Europe,Italy,Marche
IT_62,Europe,Southern Europe,Italy,Lazio
IT_65,Europe,Southern Europe,Italy,Abruzzo
IT_67,Europe,Southern Europe,Italy,Molise
IT_72,Europe,Southern Europe,Italy,Campania
IT_75,Europe,Southern Europe,Italy,Puglia
IT_77,Europe,Southern Europe,Italy,Basilicata
IT_78,Europe,Southern Europe,Italy,Calabria
IT_82,Europe,Southern Europe,Italy,Sicilia
IT_88,Europe,Southern Europe,Italy,Sardegna
JM,America,Caribbean,Jamaica,All Regions
JM_01,America,Caribbean,Jamaica,Kingston
JM_02,America,Caribbean,Jamaica,Saint Andrew
JM_03,America,Caribbean,Jamaica,Saint Thomas
JM_04,America,Caribbean,Jamaica,Portland
JM_05,America,Caribbean,Jamaica,Saint Mary
JM_06,America,Caribbean,Jamaica,Saint Ann
JM_07,America,Caribbean,Jamaica,Trelawny
JM_08,America,Caribbean,Jamaica,Saint James
JM_09,America,Caribbean,Jamaica,Hanover
JM_10,America,Caribbean,Jamaica,Westmoreland
JM_11,America,Caribbean,Jamaica,Saint Elizabeth
JM_12,America,Caribbean,Jamaica,Manchester
JM_13,America,Caribbean,Jamaica,Clarendon
JM_14,America,Caribbean,Jamaica,Saint Catherine
JO,Asia,Western Asia,Jordan,All Regions
JO_AM,Asia,Western Asia,Jordan,Al 'Asimah
JO_AQ,Asia,Western Asia,Jordan,Al 'Aqabah
JO_AZ,Asia,Western Asia,Jordan,Az Zarqa'
JO_BA,Asia,Western Asia,Jordan,Al Balqa'
JO_IR,Asia,Western Asia,Jordan,Irbid
JO_KA,Asia,Western Asia,Jordan,Al Karak
JO_MA,Asia,Western Asia,Jordan,Al Mafraq
JO_MD,Asia,Western Asia,Jordan,Madaba
JO_MN,Asia,Western Asia,Jordan,Ma'an
JP,Asia,Eastern Asia,Japan,All Regions
JP_01,Asia,Eastern Asia,Japan,Hokkaido
JP_02,Asia,Eastern Asia,Japan,Aomori
JP_03,Asia,Eastern Asia,Japan,Iwate
JP_04,Asia,Eastern Asia,Japan,Miyagi
JP_05,Asia,Eastern Asia,Japan,Akita
JP_06,Asia,Eastern Asia,Japan,Yamagata
JP_07,Asia,Eastern Asia,Japan,Fukushima
JP_08,Asia,Eastern Asia,Japan,Ibaraki
JP_09,Asia,Eastern Asia,Japan,Tochigi
JP_10,Asia,Eastern Asia,Japan,Gunma
JP_11,Asia,Eastern Asia,Japan,Saitama
JP_12,Asia,Eastern Asia,Japan,Chiba
JP_13,Asia,Eastern Asia,Japan,Tokyo
JP_14,Asia,Eastern Asia,Japan,Kanagawa
JP_15,Asia,Eastern Asia,Japan,Niigata
JP_16,Asia,Eastern Asia,Japan,Toyama
JP_17,Asia,Eastern Asia,Japan,Ishikawa
JP_18,Asia,Eastern Asia,Japan,Fukui
JP_19,Asia,Eastern Asia,Japan,Yamanashi
JP_20,Asia,Eastern Asia,Japan,Nagano
JP_21,Asia,Eastern Asia,Japan,Gifu
JP_22,Asia,Eastern Asia,Japan,Shizuoka
JP_23,Asia,Eastern Asia,Japan,Aichi
JP_24,Asia,Eastern Asia,Japan,Mie
JP_25,Asia,Eastern Asia,Japan,Shiga
JP_26,Asia,Eastern Asia,Japan,Kyoto
JP_27,Asia,Eastern Asia,Japan,Osaka
JP_28,Asia,Eastern Asia,Japan,Hyogo
JP_29,Asia,Eastern Asia,Japan,Nara
JP_30,Asia,Eastern Asia,Japan,Wakayama
JP_31,Asia,Eastern Asia,Japan,Tottori
JP_32,Asia,Eastern Asia,Japan,Shimane
JP_33,Asia,Eastern Asia,Japan,Okayama
JP_34,Asia,Eastern Asia,Japan,Hiroshima
JP_35,Asia,Eastern Asia,Japan,Yamaguchi
JP_36,Asia,Eastern Asia,Japan,Tokushima
JP_37,Asia,Eastern Asia,Japan,Kagawa
JP_38,Asia,Eastern Asia,Japan,Ehime
JP_39,Asia,Eastern Asia,Japan,Kochi
JP_40,Asia,Eastern Asia,Japan,Fukuoka
JP_41,Asia,Eastern Asia,Japan,Saga
JP_42,Asia,Eastern Asia,Japan,Nagasaki
JP_43,Asia,Eastern Asia,Japan,Kumamoto
JP_44,Asia,Eastern Asia,Japan,Oita
JP_45,Asia,Eastern Asia,Japan,Miyazaki
JP_46,Asia,Eastern Asia,Japan,Kagoshima
JP_47,Asia,Eastern Asia,Japan,Okinawa
KE,Africa,Eastern Africa,Kenya,All Regions
KE_01,Africa,Eastern Africa,Kenya,Baringo
KE_02,Africa,Eastern Africa,Kenya,Bomet
KE_03,Africa,Eastern Africa,Kenya,Bungoma
KE_04,Africa,Eastern Africa,Kenya,Busia
KE_06,Africa,Eastern Africa,Kenya,Embu
KE_07,Africa,Eastern Africa,Kenya,Garissa
KE_08,Africa,Eastern Africa,Kenya,Homa Bay
KE_09,Africa,Eastern Africa,Kenya,Isiolo
KE_10,Africa,Eastern Africa,Kenya,Kajiado
KE_11,Africa,Eastern Africa,Kenya,Kakamega
KE_12,Africa,Eastern Africa,Kenya,Kericho
KE_13,Africa,Eastern Africa,Kenya,Kiambu
KE_14,Africa,Eastern Africa,Kenya,Kilifi
KE_15,Africa,Eastern Africa,Kenya,Kirinyaga
KE_16,Africa,Eastern Africa,Kenya,Kisii
KE_17,Africa,Eastern Africa,Kenya,Kisumu
KE_18,Africa,Eastern Africa,Kenya,Kitui
KE_19,Africa,Eastern Africa,Kenya,Kwale
KE_20,Africa,Eastern Africa,Kenya,Laikipia
KE_21,Africa,Eastern Africa,Kenya,Lamu
KE_22,Africa,Eastern Africa,Kenya,Machakos
KE_23,Africa,Eastern Africa,Kenya,Makueni
KE_24,Africa,Eastern Africa,Kenya,Mandera
KE_25,Africa,Eastern Africa,Kenya,Marsabit
KE_26,Africa,Eastern Africa,Kenya,Meru
KE_27,Africa,Eastern Africa,Kenya,Migori
KE_28,Africa,Eastern Africa,Kenya,Mombasa
KE_29,Africa,Eastern Africa,Kenya,Murang'a
KE_30,Africa,Eastern Africa,Kenya,Nairobi City
KE_31,Africa,Eastern Africa,Kenya,Nakuru
KE_32,Africa,Eastern Africa,Kenya,Nandi
KE_33,Africa,Eastern Africa,Kenya,Narok
KE_34,Africa,Eastern Africa,Kenya,Nyamira
KE_36,Africa,Eastern Africa,Kenya,Nyeri
KE_38,Africa,Eastern Africa,Kenya,Siaya
KE_39,Africa,Eastern Africa,Kenya,Taita/Taveta
KE_41,Africa,Eastern Africa,Kenya,Tharaka-Nithi
KE_42,Africa,Eastern Africa,Kenya,Trans Nzoia
KE_43,Africa,Eastern Africa,Kenya,Turkana
KE_44,Africa,Eastern Africa,Kenya,Uasin Gishu
KE_46,Africa,Eastern Africa,Kenya,Wajir
KE_47,Africa,Eastern Africa,Kenya,West Pokot
KG,Asia,Central Asia,Kyrgyzstan,All Regions
KG_B,Asia,Central Asia,Kyrgyzstan,Batken
KG_C,Asia,Central Asia,Kyrgyzstan,Chuy
KG_GB,Asia,Central Asia,Kyrgyzstan,Bishkek
KG_GO,Asia,Central Asia,Kyrgyzstan,Osh
KG_J,Asia,Central Asia,Kyrgyzstan,Jalal-Abad
KG_N,Asia,Central Asia,Kyrgyzstan,Naryn
KG_T,Asia,Central Asia,Kyrgyzstan,Talas
KG_Y,Asia,Central Asia,Kyrgyzstan,Ysyk-Kol
KH,Asia,South-Eastern Asia,Cambodia,All Regions
KH_1,Asia,South-Eastern Asia,Cambodia,Banteay Mean Chey
KH_10,Asia,South-Eastern Asia,Cambodia,Kracheh
KH_11,Asia,South-Eastern Asia,Cambodia,Mondol Kiri
KH_12,Asia,South-Eastern Asia,Cambodia,Phnom Penh
KH_13,Asia,South-Eastern Asia,Cambodia,Preah Vihear
KH_14,Asia,South-Eastern Asia,Cambodia,Prey Veaeng
KH_15,Asia,South-Eastern Asia,Cambodia,Pousaat
KH_16,Asia,South-Eastern Asia,Cambodia,Rotanak Kiri
KH_17,Asia,South-Eastern Asia,Cambodia,Siem Reab
KH_18,Asia,South-Eastern Asia,Cambodia,Krong Preah Sihanouk
KH_19,Asia,South-Eastern Asia,Cambodia,Stueng Traeng
KH_2,Asia,South-Eastern Asia,Cambodia,Baat Dambang
KH_20,Asia,South-Eastern Asia,Cambodia,Svaay Rieng
KH_21,Asia,South-Eastern Asia,Cambodia,Taakaev
KH_23,Asia,South-Eastern Asia,Cambodia,Krong Kaeb
KH_24,Asia,South-Eastern Asia,Cambodia,Krong Pailin
KH_3,Asia,South-Eastern Asia,Cambodia,Kampong Chaam
KH_4,Asia,South-Eastern Asia,Cambodia,Kampong Chhnang
KH_5,Asia,South-Eastern Asia,Cambodia,Kampong Spueu
KH_6,Asia,South-Eastern Asia,Cambodia,Kampong Thum
KH_7,Asia,South-Eastern Asia,Cambodia,Kampot
KH_8,Asia,South-Eastern Asia,Cambodia,Kandaal
KH_9,Asia,South-Eastern Asia,Cambodia,Kaoh Kong
KI,Oceania,Micronesia,Kiribati,All Regions
KI_G,Oceania,Micronesia,Kiribati,Gilbert Islands
KI_L,Oceania,Micronesia,Kiribati,Line Islands
KM,Africa,Eastern Africa,Comoros,All Regions
KM_A,Africa,Eastern Africa,Comoros,Anjouan
KM_G,Africa,Eastern Africa,Comoros,Grande Comore
KN,America,Caribbean,Saint Kitts and Nevis,All Regions
KN_03,America,Caribbean,Saint Kitts and Nevis,Saint George Basseterre
KN_10,America,Caribbean,Saint Kitts and Nevis,Saint Paul Charlestown
KP,Asia,Eastern Asia,North Korea,All Regions
KP_01,Asia,Eastern Asia,North Korea,P'yongyang
KR,Asia,Eastern Asia,South Korea,All Regions
KR_11,Asia,Eastern Asia,South Korea,Seoul-teukbyeolsi
KR_26,Asia,Eastern Asia,South Korea,Busan-gwangyeoksi
KR_27,Asia,Eastern Asia,South Korea,Daegu-gwangyeoksi
KR_28,Asia,Eastern Asia,South Korea,Incheon-gwangyeoksi
KR_29,Asia,Eastern Asia,South Korea,Gwangju-gwangyeoksi
KR_30,Asia,Eastern Asia,South Korea,Daejeon-gwangyeoksi
KR_31,Asia,Eastern Asia,South Korea,Ulsan-gwangyeoksi
KR_41,Asia,Eastern Asia,South Korea,Gyeonggi-do
KR_42,Asia,Eastern Asia,South Korea,Gangwon-do
KR_43,Asia,Eastern Asia,South Korea,Chungcheongbuk-do
KR_44,Asia,Eastern Asia,South Korea,Chungcheongnam-do
KR_45,Asia,Eastern Asia,South Korea,Jeollabuk-do
KR_46,Asia,Eastern Asia,South Korea,Jeollanam-do
KR_47,Asia,Eastern Asia,South Korea,Gyeongsangbuk-do
KR_48,Asia,Eastern Asia,South Korea,Gyeongsangnam-do
KR_49,Asia,Eastern Asia,South Korea,Jeju-teukbyeoljachido
KW,Asia,Western Asia,Kuwait,All Regions
KW_AH,Asia,Western Asia,Kuwait,Al Ahmadi
KW_FA,Asia,Western Asia,Kuwait,Al Farwaniyah
KW_HA,Asia,Western Asia,Kuwait,Hawalli
KW_JA,Asia,Western Asia,Kuwait,Al Jahra
KW_KU,Asia,Western Asia,Kuwait,Al 'Asimah
KW_MU,Asia,Western Asia,Kuwait,Mubarak al Kabir
KY,America,Caribbean,Cayman Islands,All Regions
KY_Cayman_Islands,America,Caribbean,Cayman Islands,Cayman Islands
KZ,Asia,Central Asia,Kazakhstan,All Regions
KZ_AKM,Asia,Central Asia,Kazakhstan,Aqmola oblysy
KZ_AKT,Asia,Central Asia,Kazakhstan,Aqtobe oblysy
KZ_ALA,Asia,Central Asia,Kazakhstan,Almaty
KZ_ALM,Asia,Central Asia,Kazakhstan,Almaty oblysy
KZ_AST,Asia,Central Asia,Kazakhstan,Astana
KZ_ATY,Asia,Central Asia,Kazakhstan,Atyrau oblysy
KZ_BAY,Asia,Central Asia,Kazakhstan,Bayqongyr
KZ_KAR,Asia,Central Asia,Kazakhstan,Qaraghandy oblysy
KZ_KUS,Asia,Central Asia,Kazakhstan,Qostanay oblysy
KZ_KZY,Asia,Central Asia,Kazakhstan,Qyzylorda oblysy
KZ_MAN,Asia,Central Asia,Kazakhstan,Mangghystau oblysy
KZ_PAV,Asia,Central Asia,Kazakhstan,Pavlodar oblysy
KZ_SEV,Asia,Central Asia,Kazakhstan,Soltustik Qazaqstan oblysy
KZ_VOS,Asia,Central Asia,Kazakhstan,Shyghys Qazaqstan oblysy
KZ_YUZ,Asia,Central Asia,Kazakhstan,Ongtustik Qazaqstan oblysy
KZ_ZAP,Asia,Central Asia,Kazakhstan,Batys Qazaqstan oblysy
KZ_ZHA,Asia,Central Asia,Kazakhstan,Zhambyl oblysy
LA,Asia,South-Eastern Asia,Lao People's Democratic Republic,All Regions
LA_AT,Asia,South-Eastern Asia,Lao People's Democratic Republic,Attapu
LA_BL,Asia,South-Eastern Asia,Lao People's Democratic Republic,Bolikhamxai
LA_CH,Asia,South-Eastern Asia,Lao People's Democratic Republic,Champasak
LA_HO,Asia,South-Eastern Asia,Lao People's Democratic Republic,Houaphan
LA_KH,Asia,South-Eastern Asia,Lao People's Democratic Republic,Khammouan
LA_LM,Asia,South-Eastern Asia,Lao People's Democratic Republic,Louang Namtha
LA_LP,Asia,South-Eastern Asia,Lao People's Democratic Republic,Louangphabang
LA_OU,Asia,South-Eastern Asia,Lao People's Democratic Republic,Oudomxai
LA_SV,Asia,South-Eastern Asia,Lao People's Democratic Republic,Savannakhet
LA_VI,Asia,South-Eastern Asia,Lao People's Democratic Republic,Viangchan
LA_XA,Asia,South-Eastern Asia,Lao People's Democratic Republic,Xaignabouli
LA_XE,Asia,South-Eastern Asia,Lao People's Democratic Republic,Xekong
LA_XI,Asia,South-Eastern Asia,Lao People's Democratic Republic,Xiangkhouang
LB,Asia,Western Asia,Lebanon,All Regions
LB_AK,Asia,Western Asia,Lebanon,Aakkar
LB_AS,Asia,Western Asia,Lebanon,Liban-Nord
LB_BA,Asia,Western Asia,Lebanon,Beyrouth
LB_BH,Asia,Western Asia,Lebanon,Baalbek-Hermel
LB_BI,Asia,Western Asia,Lebanon,Beqaa
LB_JA,Asia,Western Asia,Lebanon,Liban-Sud
LB_JL,Asia,Western Asia,Lebanon,Mont-Liban
LB_NA,Asia,Western Asia,Lebanon,Nabatiye
LC,America,Caribbean,Saint Lucia,All Regions
LC_01,America,Caribbean,Saint Lucia,Anse la Raye
LC_02,America,Caribbean,Saint Lucia,Castries
LC_05,America,Caribbean,Saint Lucia,Dennery
LC_06,America,Caribbean,Saint Lucia,Gros Islet
LC_07,America,Caribbean,Saint Lucia,Laborie
LC_08,America,Caribbean,Saint Lucia,Micoud
LC_10,America,Caribbean,Saint Lucia,Soufriere
LC_11,America,Caribbean,Saint Lucia,Vieux Fort
LI,Europe,Western Europe,Liechtenstein,All Regions
LI_01,Europe,Western Europe,Liechtenstein,Balzers
LI_02,Europe,Western Europe,Liechtenstein,Eschen
LI_03,Europe,Western Europe,Liechtenstein,Gamprin
LI_04,Europe,Western Europe,Liechtenstein,Mauren
LI_05,Europe,Western Europe,Liechtenstein,Planken
LI_06,Europe,Western Europe,Liechtenstein,Ruggell
LI_07,Europe,Western Europe,Liechtenstein,Schaan
LI_08,Europe,Western Europe,Liechtenstein,Schellenberg
LI_09,Europe,Western Europe,Liechtenstein,Triesen
LI_10,Europe,Western Europe,Liechtenstein,Triesenberg
LI_11,Europe,Western Europe,Liechtenstein,Vaduz
LK,Asia,Southern Asia,Sri Lanka,All Regions
LK_1,Asia,Southern Asia,Sri Lanka,Western Province
LK_2,Asia,Southern Asia,Sri Lanka,Central Province
LK_3,Asia,Southern Asia,Sri Lanka,Southern Province
LK_4,Asia,Southern Asia,Sri Lanka,Northern Province
LK_5,Asia,Southern Asia,Sri Lanka,Eastern Province
LK_6,Asia,Southern Asia,Sri Lanka,North Western Province
LK_7,Asia,Southern Asia,Sri Lanka,North Central Province
LK_8,Asia,Southern Asia,Sri Lanka,Uva Province
LK_9,Asia,Southern Asia,Sri Lanka,Sabaragamuwa Province
LR,Africa,Western Africa,Liberia,All Regions
LR_BG,Africa,Western Africa,Liberia,Bong
LR_GB,Africa,Western Africa,Liberia,Grand Bassa
LR_GG,Africa,Western Africa,Liberia,Grand Gedeh
LR_MG,Africa,Western Africa,Liberia,Margibi
LR_MO,Africa,Western Africa,Liberia,Montserrado
LR_MY,Africa,Western Africa,Liberia,Maryland
LR_NI,Africa,Western Africa,Liberia,Nimba
LR_RG,Africa,Western Africa,Liberia,River Gee
LR_SI,Africa,Western Africa,Liberia,Sinoe
LS,Africa,Southern Africa,Lesotho,All Regions
LS_A,Africa,Southern Africa,Lesotho,Maseru
LS_B,Africa,Southern Africa,Lesotho,Butha-Buthe
LS_C,Africa,Southern Africa,Lesotho,Leribe
LS_D,Africa,Southern Africa,Lesotho,Berea
LS_F,Africa,Southern Africa,Lesotho,Mohale's Hoek
LS_G,Africa,Southern Africa,Lesotho,Quthing
LT,Europe,Northern Europe,Lithuania,All Regions
LT_AL,Europe,Northern Europe,Lithuania,Alytaus apskritis
LT_KL,Europe,Northern Europe,Lithuania,Klaipedos apskritis
LT_KU,Europe,Northern Europe,Lithuania,Kauno apskritis
LT_MR,Europe,Northern Europe,Lithuania,Marijampoles apskritis
LT_PN,Europe,Northern Europe,Lithuania,Panevezio apskritis
LT_SA,Europe,Northern Europe,Lithuania,Siauliu apskritis
LT_TA,Europe,Northern Europe,Lithuania,Taurages apskritis
LT_TE,Europe,Northern Europe,Lithuania,Telsiu apskritis
LT_UT,Europe,Northern Europe,Lithuania,Utenos apskritis
LT_VL,Europe,Northern Europe,Lithuania,Vilniaus apskritis
LU,Europe,Western Europe,Luxembourg,All Regions
LU_DI,Europe,Western Europe,Luxembourg,Diekirch
LU_GR,Europe,Western Europe,Luxembourg,Grevenmacher
LU_LU,Europe,Western Europe,Luxembourg,Luxembourg
LV,Europe,Northern Europe,Latvia,All Regions
LV_001,Europe,Northern Europe,Latvia,Aglonas novads
LV_002,Europe,Northern Europe,Latvia,Aizkraukles novads
LV_003,Europe,Northern Europe,Latvia,Aizputes novads
LV_005,Europe,Northern Europe,Latvia,Alojas novads
LV_007,Europe,Northern Europe,Latvia,Aluksnes novads
LV_011,Europe,Northern Europe,Latvia,Adazu novads
LV_012,Europe,Northern Europe,Latvia,Babites novads
LV_014,Europe,Northern Europe,Latvia,Baltinavas novads
LV_015,Europe,Northern Europe,Latvia,Balvu novads
LV_016,Europe,Northern Europe,Latvia,Bauskas novads
LV_017,Europe,Northern Europe,Latvia,Beverinas novads
LV_018,Europe,Northern Europe,Latvia,Brocenu novads
LV_020,Europe,Northern Europe,Latvia,Carnikavas novads
LV_021,Europe,Northern Europe,Latvia,Cesvaines novads
LV_022,Europe,Northern Europe,Latvia,Cesu novads
LV_023,Europe,Northern Europe,Latvia,Ciblas novads
LV_025,Europe,Northern Europe,Latvia,Daugavpils novads
LV_026,Europe,Northern Europe,Latvia,Dobeles novads
LV_027,Europe,Northern Europe,Latvia,Dundagas novads
LV_033,Europe,Northern Europe,Latvia,Gulbenes novads
LV_034,Europe,Northern Europe,Latvia,Iecavas novads
LV_037,Europe,Northern Europe,Latvia,Incukalna novads
LV_038,Europe,Northern Europe,Latvia,Jaunjelgavas novads
LV_039,Europe,Northern Europe,Latvia,Jaunpiebalgas novads
LV_040,Europe,Northern Europe,Latvia,Jaunpils novads
LV_041,Europe,Northern Europe,Latvia,Jelgavas novads
LV_042,Europe,Northern Europe,Latvia,Jekabpils novads
LV_046,Europe,Northern Europe,Latvia,Kokneses novads
LV_047,Europe,Northern Europe,Latvia,Kraslavas novads
LV_050,Europe,Northern Europe,Latvia,Kuldigas novads
LV_052,Europe,Northern Europe,Latvia,Kekavas novads
LV_054,Europe,Northern Europe,Latvia,Limbazu novads
LV_057,Europe,Northern Europe,Latvia,Lubanas novads
LV_058,Europe,Northern Europe,Latvia,Ludzas novads
LV_059,Europe,Northern Europe,Latvia,Madonas novads
LV_061,Europe,Northern Europe,Latvia,Malpils novads
LV_067,Europe,Northern Europe,Latvia,Ogres novads
LV_068,Europe,Northern Europe,Latvia,Olaines novads
LV_069,Europe,Northern Europe,Latvia,Ozolnieku novads
LV_073,Europe,Northern Europe,Latvia,Preilu novads
LV_077,Europe,Northern Europe,Latvia,Rezeknes novads
LV_079,Europe,Northern Europe,Latvia,Rojas novads
LV_080,Europe,Northern Europe,Latvia,Ropazu novads
LV_082,Europe,Northern Europe,Latvia,Rugaju novads
LV_083,Europe,Northern Europe,Latvia,Rundales novads
LV_086,Europe,Northern Europe,Latvia,Salacgrivas novads
LV_088,Europe,Northern Europe,Latvia,Saldus novads
LV_090,Europe,Northern Europe,Latvia,Sejas novads
LV_091,Europe,Northern Europe,Latvia,Siguldas novads
LV_093,Europe,Northern Europe,Latvia,Skrundas novads
LV_095,Europe,Northern Europe,Latvia,Stopinu novads
LV_096,Europe,Northern Europe,Latvia,Strencu novads
LV_097,Europe,Northern Europe,Latvia,Talsu novads
LV_099,Europe,Northern Europe,Latvia,Tukuma novads
LV_101,Europe,Northern Europe,Latvia,Valkas novads
LV_103,Europe,Northern Europe,Latvia,Varkavas novads
LV_105,Europe,Northern Europe,Latvia,Vecumnieku novads
LV_106,Europe,Northern Europe,Latvia,Ventspils novads
LV_JEL,Europe,Northern Europe,Latvia,Jelgava
LV_JUR,Europe,Northern Europe,Latvia,Jurmala
LV_LPX,Europe,Northern Europe,Latvia,Liepaja
LV_RIX,Europe,Northern Europe,Latvia,Riga
LV_VMR,Europe,Northern Europe,Latvia,Valmiera
LY,Africa,Northern Africa,Libya,All Regions
LY_BA,Africa,Northern Africa,Libya,Banghazi
LY_BU,Africa,Northern Africa,Libya,Al Butnan
LY_DR,Africa,Northern Africa,Libya,Darnah
LY_GT,Africa,Northern Africa,Libya,Ghat
LY_JA,Africa,Northern Africa,Libya,Al Jabal al Akhdar
LY_JG,Africa,Northern Africa,Libya,Al Jabal al Gharbi
LY_JU,Africa,Northern Africa,Libya,Al Jufrah
LY_KF,Africa,Northern Africa,Libya,Al Kufrah
LY_MB,Africa,Northern Africa,Libya,Al Marqab
LY_MI,Africa,Northern Africa,Libya,Misratah
LY_MJ,Africa,Northern Africa,Libya,Al Marj
LY_NL,Africa,Northern Africa,Libya,Nalut
LY_NQ,Africa,Northern Africa,Libya,An Nuqat al Khams
LY_SB,Africa,Northern Africa,Libya,Sabha
LY_SR,Africa,Northern Africa,Libya,Surt
LY_TB,Africa,Northern Africa,Libya,Tarabulus
LY_WA,Africa,Northern Africa,Libya,Al Wahat
LY_WS,Africa,Northern Africa,Libya,Wadi ash Shati'
LY_ZA,Africa,Northern Africa,Libya,Az Zawiyah
MA,Africa,Northern Africa,Morocco,All Regions
MA_01,Africa,Northern Africa,Morocco,Tanger-Tetouan
MA_02,Africa,Northern Africa,Morocco,Gharb-Chrarda-Beni Hssen
MA_03,Africa,Northern Africa,Morocco,Taza-Al Hoceima-Taounate
MA_04,Africa,Northern Africa,Morocco,L'Oriental
MA_05,Africa,Northern Africa,Morocco,Fes-Boulemane
MA_06,Africa,Northern Africa,Morocco,Meknes-Tafilalet
MA_07,Africa,Northern Africa,Morocco,Rabat-Sale-Zemmour-Zaer
MA_08,Africa,Northern Africa,Morocco,Grand Casablanca
MA_09,Africa,Northern Africa,Morocco,Chaouia-Ouardigha
MA_10,Africa,Northern Africa,Morocco,Doukhala-Abda
MA_11,Africa,Northern Africa,Morocco,Marrakech-Tensift-Al Haouz
MA_12,Africa,Northern Africa,Morocco,Tadla-Azilal
MA_13,Africa,Northern Africa,Morocco,Souss-Massa-Draa
MA_14,Africa,Northern Africa,Morocco,Guelmim-Es Semara
MC,Europe,Western Europe,Monaco,All Regions
MC_CO,Europe,Western Europe,Monaco,La Condamine
MC_MC,Europe,Western Europe,Monaco,Monte-Carlo
MC_MO,Europe,Western Europe,Monaco,Monaco-Ville
MC_SR,Europe,Western Europe,Monaco,Saint-Roman
MD,Europe,Eastern Europe,Moldova,All Regions
MD_AN,Europe,Eastern Europe,Moldova,Anenii Noi
MD_BA,Europe,Eastern Europe,Moldova,Balti
MD_BD,Europe,Eastern Europe,Moldova,Bender
MD_BR,Europe,Eastern Europe,Moldova,Briceni
MD_BS,Europe,Eastern Europe,Moldova,Basarabeasca
MD_CA,Europe,Eastern Europe,Moldova,Cahul
MD_CL,Europe,Eastern Europe,Moldova,Calarasi
MD_CM,Europe,Eastern Europe,Moldova,Cimislia
MD_CR,Europe,Eastern Europe,Moldova,Criuleni
MD_CS,Europe,Eastern Europe,Moldova,Causeni
MD_CT,Europe,Eastern Europe,Moldova,Cantemir
MD_CU,Europe,Eastern Europe,Moldova,Chisinau
MD_DO,Europe,Eastern Europe,Moldova,Donduseni
MD_DR,Europe,Eastern Europe,Moldova,Drochia
MD_DU,Europe,Eastern Europe,Moldova,Dubasari
MD_ED,Europe,Eastern Europe,Moldova,Edinet
MD_FA,Europe,Eastern Europe,Moldova,Falesti
MD_FL,Europe,Eastern Europe,Moldova,Floresti
MD_GA,Europe,Eastern Europe,Moldova,Gagauzia, Unitatea teritoriala autonoma
MD_GL,Europe,Eastern Europe,Moldova,Glodeni
MD_HI,Europe,Eastern Europe,Moldova,Hincesti
MD_IA,Europe,Eastern Europe,Moldova,Ialoveni
MD_LE,Europe,Eastern Europe,Moldova,Leova
MD_NI,Europe,Eastern Europe,Moldova,Nisporeni
MD_OC,Europe,Eastern Europe,Moldova,Ocnita
MD_OR,Europe,Eastern Europe,Moldova,Orhei
MD_RE,Europe,Eastern Europe,Moldova,Rezina
MD_RI,Europe,Eastern Europe,Moldova,Riscani
MD_SD,Europe,Eastern Europe,Moldova,Soldanesti
MD_SI,Europe,Eastern Europe,Moldova,Singerei
MD_SN,Europe,Eastern Europe,Moldova,Stinga Nistrului, unitatea teritoriala din
MD_SO,Europe,Eastern Europe,Moldova,Soroca
MD_ST,Europe,Eastern Europe,Moldova,Straseni
MD_SV,Europe,Eastern Europe,Moldova,Stefan Voda
MD_TA,Europe,Eastern Europe,Moldova,Taraclia
MD_TE,Europe,Eastern Europe,Moldova,Telenesti
MD_UN,Europe,Eastern Europe,Moldova,Ungheni
ME,Europe,Southern Europe,Montenegro,All Regions
ME_02,Europe,Southern Europe,Montenegro,Bar
ME_05,Europe,Southern Europe,Montenegro,Budva
ME_06,Europe,Southern Europe,Montenegro,Cetinje
ME_07,Europe,Southern Europe,Montenegro,Danilovgrad
ME_08,Europe,Southern Europe,Montenegro,Herceg-Novi
ME_09,Europe,Southern Europe,Montenegro,Kolasin
ME_10,Europe,Southern Europe,Montenegro,Kotor
ME_12,Europe,Southern Europe,Montenegro,Niksic
ME_16,Europe,Southern Europe,Montenegro,Podgorica
ME_19,Europe,Southern Europe,Montenegro,Tivat
ME_20,Europe,Southern Europe,Montenegro,Ulcinj
ME_21,Europe,Southern Europe,Montenegro,Zabljak
MF,America,Caribbean,Saint Martin (French part),All Regions
MF_Saint_Martin,America,Caribbean,Saint Martin (French part),Saint Martin
MG,Africa,Eastern Africa,Madagascar,All Regions
MG_A,Africa,Eastern Africa,Madagascar,Toamasina
MG_D,Africa,Eastern Africa,Madagascar,Antsiranana
MG_F,Africa,Eastern Africa,Madagascar,Fianarantsoa
MG_M,Africa,Eastern Africa,Madagascar,Mahajanga
MG_T,Africa,Eastern Africa,Madagascar,Antananarivo
MG_U,Africa,Eastern Africa,Madagascar,Toliara
MH,Oceania,Micronesia,Marshall Islands,All Regions
MH_KWA,Oceania,Micronesia,Marshall Islands,Kwajalein
MH_MAJ,Oceania,Micronesia,Marshall Islands,Majuro
MK,Europe,Southern Europe,Macedonia,All Regions
MK_02,Europe,Southern Europe,Macedonia,Aracinovo
MK_03,Europe,Southern Europe,Macedonia,Berovo
MK_04,Europe,Southern Europe,Macedonia,Bitola
MK_05,Europe,Southern Europe,Macedonia,Bogdanci
MK_06,Europe,Southern Europe,Macedonia,Bogovinje
MK_07,Europe,Southern Europe,Macedonia,Bosilovo
MK_08,Europe,Southern Europe,Macedonia,Brvenica
MK_10,Europe,Southern Europe,Macedonia,Valandovo
MK_12,Europe,Southern Europe,Macedonia,Vevcani
MK_13,Europe,Southern Europe,Macedonia,Veles
MK_14,Europe,Southern Europe,Macedonia,Vinica
MK_16,Europe,Southern Europe,Macedonia,Vrapciste
MK_18,Europe,Southern Europe,Macedonia,Gevgelija
MK_19,Europe,Southern Europe,Macedonia,Gostivar
MK_20,Europe,Southern Europe,Macedonia,Gradsko
MK_21,Europe,Southern Europe,Macedonia,Debar
MK_23,Europe,Southern Europe,Macedonia,Delcevo
MK_24,Europe,Southern Europe,Macedonia,Demir Kapija
MK_25,Europe,Southern Europe,Macedonia,Demir Hisar
MK_26,Europe,Southern Europe,Macedonia,Dojran
MK_27,Europe,Southern Europe,Macedonia,Dolneni
MK_30,Europe,Southern Europe,Macedonia,Zelino
MK_32,Europe,Southern Europe,Macedonia,Zelenikovo
MK_34,Europe,Southern Europe,Macedonia,Ilinden
MK_35,Europe,Southern Europe,Macedonia,Jegunovce
MK_36,Europe,Southern Europe,Macedonia,Kavadarci
MK_37,Europe,Southern Europe,Macedonia,Karbinci
MK_40,Europe,Southern Europe,Macedonia,Kicevo
MK_42,Europe,Southern Europe,Macedonia,Kocani
MK_43,Europe,Southern Europe,Macedonia,Kratovo
MK_44,Europe,Southern Europe,Macedonia,Kriva Palanka
MK_46,Europe,Southern Europe,Macedonia,Krusevo
MK_47,Europe,Southern Europe,Macedonia,Kumanovo
MK_48,Europe,Southern Europe,Macedonia,Lipkovo
MK_50,Europe,Southern Europe,Macedonia,Mavrovo i Rostusa
MK_51,Europe,Southern Europe,Macedonia,Makedonska Kamenica
MK_52,Europe,Southern Europe,Macedonia,Makedonski Brod
MK_54,Europe,Southern Europe,Macedonia,Negotino
MK_56,Europe,Southern Europe,Macedonia,Novo Selo
MK_58,Europe,Southern Europe,Macedonia,Ohrid
MK_59,Europe,Southern Europe,Macedonia,Petrovec
MK_60,Europe,Southern Europe,Macedonia,Pehcevo
MK_62,Europe,Southern Europe,Macedonia,Prilep
MK_63,Europe,Southern Europe,Macedonia,Probistip
MK_64,Europe,Southern Europe,Macedonia,Radovis
MK_65,Europe,Southern Europe,Macedonia,Rankovce
MK_66,Europe,Southern Europe,Macedonia,Resen
MK_67,Europe,Southern Europe,Macedonia,Rosoman
MK_69,Europe,Southern Europe,Macedonia,Sveti Nikole
MK_70,Europe,Southern Europe,Macedonia,Sopiste
MK_72,Europe,Southern Europe,Macedonia,Struga
MK_73,Europe,Southern Europe,Macedonia,Strumica
MK_74,Europe,Southern Europe,Macedonia,Studenicani
MK_75,Europe,Southern Europe,Macedonia,Tearce
MK_76,Europe,Southern Europe,Macedonia,Tetovo
MK_78,Europe,Southern Europe,Macedonia,Centar Zupa
MK_81,Europe,Southern Europe,Macedonia,Cesinovo-Oblesevo
MK_82,Europe,Southern Europe,Macedonia,Cucer Sandevo
MK_83,Europe,Southern Europe,Macedonia,Stip
MK_85,Europe,Southern Europe,Macedonia,Skopje
ML,Africa,Western Africa,Mali,All Regions
ML_1,Africa,Western Africa,Mali,Kayes
ML_2,Africa,Western Africa,Mali,Koulikoro
ML_3,Africa,Western Africa,Mali,Sikasso
ML_4,Africa,Western Africa,Mali,Segou
ML_5,Africa,Western Africa,Mali,Mopti
ML_6,Africa,Western Africa,Mali,Tombouctou
ML_7,Africa,Western Africa,Mali,Gao
ML_8,Africa,Western Africa,Mali,Kidal
ML_BKO,Africa,Western Africa,Mali,Bamako
MM,Asia,South-Eastern Asia,Myanmar,All Regions
MM_01,Asia,South-Eastern Asia,Myanmar,Sagaing
MM_02,Asia,South-Eastern Asia,Myanmar,Bago
MM_03,Asia,South-Eastern Asia,Myanmar,Magway
MM_04,Asia,South-Eastern Asia,Myanmar,Mandalay
MM_05,Asia,South-Eastern Asia,Myanmar,Tanintharyi
MM_06,Asia,South-Eastern Asia,Myanmar,Yangon
MM_07,Asia,South-Eastern Asia,Myanmar,Ayeyarwady
MM_11,Asia,South-Eastern Asia,Myanmar,Kachin
MM_15,Asia,South-Eastern Asia,Myanmar,Mon
MM_17,Asia,South-Eastern Asia,Myanmar,Shan
MM_18,Asia,South-Eastern Asia,Myanmar,Nay Pyi Taw
MN,Asia,Eastern Asia,Mongolia,All Regions
MN_035,Asia,Eastern Asia,Mongolia,Orhon
MN_037,Asia,Eastern Asia,Mongolia,Darhan uul
MN_043,Asia,Eastern Asia,Mongolia,Hovd
MN_047,Asia,Eastern Asia,Mongolia,Tov
MN_049,Asia,Eastern Asia,Mongolia,Selenge
MN_053,Asia,Eastern Asia,Mongolia,Omnogovi
MN_055,Asia,Eastern Asia,Mongolia,Ovorhangay
MN_063,Asia,Eastern Asia,Mongolia,Dornogovi
MN_065,Asia,Eastern Asia,Mongolia,Govi-Altay
MN_067,Asia,Eastern Asia,Mongolia,Bulgan
MN_069,Asia,Eastern Asia,Mongolia,Bayanhongor
MN_071,Asia,Eastern Asia,Mongolia,Bayan-Olgiy
MN_1,Asia,Eastern Asia,Mongolia,Ulaanbaatar
MO,Asia,Eastern Asia,Macao,All Regions
MO_Macau,Asia,Eastern Asia,Macao,Macau
MP,Oceania,Micronesia,Northern Mariana Islands,All Regions
MP_Northern_Mariana_Islands,Oceania,Micronesia,Northern Mariana Islands,Northern Mariana Islands
MQ,America,Caribbean,Martinique,All Regions
MQ_Martinique,America,Caribbean,Martinique,Martinique
MR,Africa,Western Africa,Mauritania,All Regions
MR_03,Africa,Western Africa,Mauritania,Assaba
MR_06,Africa,Western Africa,Mauritania,Trarza
MR_08,Africa,Western Africa,Mauritania,Dakhlet Nouadhibou
MR_10,Africa,Western Africa,Mauritania,Guidimaka
MR_11,Africa,Western Africa,Mauritania,Tiris Zemmour
MR_12,Africa,Western Africa,Mauritania,Inchiri
MR_14,Africa,Western Africa,Mauritania,Nouakchott Nord
MS,America,Caribbean,Montserrat,All Regions
MS_Saint_Anthony,America,Caribbean,Montserrat,Saint Anthony
MS_Saint_Peter,America,Caribbean,Montserrat,Saint Peter
MT,Europe,Southern Europe,Malta,All Regions
MT_01,Europe,Southern Europe,Malta,Attard
MT_02,Europe,Southern Europe,Malta,Balzan
MT_03,Europe,Southern Europe,Malta,Birgu
MT_04,Europe,Southern Europe,Malta,Birkirkara
MT_05,Europe,Southern Europe,Malta,Birzebbuga
MT_06,Europe,Southern Europe,Malta,Bormla
MT_07,Europe,Southern Europe,Malta,Dingli
MT_08,Europe,Southern Europe,Malta,Fgura
MT_09,Europe,Southern Europe,Malta,Floriana
MT_11,Europe,Southern Europe,Malta,Gudja
MT_13,Europe,Southern Europe,Malta,Ghajnsielem
MT_15,Europe,Southern Europe,Malta,Gharghur
MT_17,Europe,Southern Europe,Malta,Ghaxaq
MT_18,Europe,Southern Europe,Malta,Hamrun
MT_19,Europe,Southern Europe,Malta,Iklin
MT_20,Europe,Southern Europe,Malta,Isla
MT_21,Europe,Southern Europe,Malta,Kalkara
MT_22,Europe,Southern Europe,Malta,Kercem
MT_23,Europe,Southern Europe,Malta,Kirkop
MT_24,Europe,Southern Europe,Malta,Lija
MT_25,Europe,Southern Europe,Malta,Luqa
MT_26,Europe,Southern Europe,Malta,Marsa
MT_28,Europe,Southern Europe,Malta,Marsaxlokk
MT_30,Europe,Southern Europe,Malta,Mellieha
MT_32,Europe,Southern Europe,Malta,Mosta
MT_33,Europe,Southern Europe,Malta,Mqabba
MT_34,Europe,Southern Europe,Malta,Msida
MT_37,Europe,Southern Europe,Malta,Nadur
MT_38,Europe,Southern Europe,Malta,Naxxar
MT_39,Europe,Southern Europe,Malta,Paola
MT_42,Europe,Southern Europe,Malta,Qala
MT_43,Europe,Southern Europe,Malta,Qormi
MT_44,Europe,Southern Europe,Malta,Qrendi
MT_45,Europe,Southern Europe,Malta,Rabat Gozo
MT_46,Europe,Southern Europe,Malta,Rabat Malta
MT_47,Europe,Southern Europe,Malta,Safi
MT_49,Europe,Southern Europe,Malta,Saint John
MT_51,Europe,Southern Europe,Malta,Saint Paul's Bay
MT_52,Europe,Southern Europe,Malta,Sannat
MT_55,Europe,Southern Europe,Malta,Siggiewi
MT_56,Europe,Southern Europe,Malta,Sliema
MT_57,Europe,Southern Europe,Malta,Swieqi
MT_58,Europe,Southern Europe,Malta,Ta' Xbiex
MT_59,Europe,Southern Europe,Malta,Tarxien
MT_60,Europe,Southern Europe,Malta,Valletta
MT_61,Europe,Southern Europe,Malta,Xaghra
MT_62,Europe,Southern Europe,Malta,Xewkija
MT_65,Europe,Southern Europe,Malta,Zebbug Gozo
MT_67,Europe,Southern Europe,Malta,Zejtun
MT_68,Europe,Southern Europe,Malta,Zurrieq
MU,Africa,Eastern Africa,Mauritius,All Regions
MU_BL,Africa,Eastern Africa,Mauritius,Black River
MU_FL,Africa,Eastern Africa,Mauritius,Flacq
MU_GP,Africa,Eastern Africa,Mauritius,Grand Port
MU_MO,Africa,Eastern Africa,Mauritius,Moka
MU_PA,Africa,Eastern Africa,Mauritius,Pamplemousses
MU_PU,Africa,Eastern Africa,Mauritius,Port Louis
MU_PW,Africa,Eastern Africa,Mauritius,Plaines Wilhems
MU_RR,Africa,Eastern Africa,Mauritius,Riviere du Rempart
MU_SA,Africa,Eastern Africa,Mauritius,Savanne
MV,Asia,Southern Asia,Maldives,All Regions
MV_01,Asia,Southern Asia,Maldives,Seenu
MV_02,Asia,Southern Asia,Maldives,Alifu Alifu
MV_05,Asia,Southern Asia,Maldives,Laamu
MV_07,Asia,Southern Asia,Maldives,Haa Alifu
MV_12,Asia,Southern Asia,Maldives,Meemu
MV_13,Asia,Southern Asia,Maldives,Raa
MV_20,Asia,Southern Asia,Maldives,Baa
MV_23,Asia,Southern Asia,Maldives,Haa Dhaalu
MV_25,Asia,Southern Asia,Maldives,Noonu
MV_26,Asia,Southern Asia,Maldives,Kaafu
MV_28,Asia,Southern Asia,Maldives,Gaafu Dhaalu
MV_MLE,Asia,Southern Asia,Maldives,Maale
MW,Africa,Eastern Africa,Malawi,All Regions
MW_BA,Africa,Eastern Africa,Malawi,Balaka
MW_BL,Africa,Eastern Africa,Malawi,Blantyre
MW_DO,Africa,Eastern Africa,Malawi,Dowa
MW_LI,Africa,Eastern Africa,Malawi,Lilongwe
MW_MG,Africa,Eastern Africa,Malawi,Mangochi
MW_MH,Africa,Eastern Africa,Malawi,Machinga
MW_MZ,Africa,Eastern Africa,Malawi,Mzimba
MW_NI,Africa,Eastern Africa,Malawi,Ntchisi
MW_SA,Africa,Eastern Africa,Malawi,Salima
MW_ZO,Africa,Eastern Africa,Malawi,Zomba
MX,America,Central America,Mexico,All Regions
MX_AGU,America,Central America,Mexico,Aguascalientes
MX_BCN,America,Central America,Mexico,Baja California
MX_BCS,America,Central America,Mexico,Baja California Sur
MX_CAM,America,Central America,Mexico,Campeche
MX_CHH,America,Central America,Mexico,Chihuahua
MX_CHP,America,Central America,Mexico,Chiapas
MX_CMX,America,Central America,Mexico,Ciudad de Mexico
MX_COA,America,Central America,Mexico,Coahuila de Zaragoza
MX_COL,America,Central America,Mexico,Colima
MX_DUR,America,Central America,Mexico,Durango
MX_GRO,America,Central America,Mexico,Guerrero
MX_GUA,America,Central America,Mexico,Guanajuato
MX_HID,America,Central America,Mexico,Hidalgo
MX_JAL,America,Central America,Mexico,Jalisco
MX_MEX,America,Central America,Mexico,Mexico
MX_MIC,America,Central America,Mexico,Michoacan de Ocampo
MX_MOR,America,Central America,Mexico,Morelos
MX_NAY,America,Central America,Mexico,Nayarit
MX_NLE,America,Central America,Mexico,Nuevo Leon
MX_OAX,America,Central America,Mexico,Oaxaca
MX_PUE,America,Central America,Mexico,Puebla
MX_QUE,America,Central America,Mexico,Queretaro
MX_ROO,America,Central America,Mexico,Quintana Roo
MX_SIN,America,Central America,Mexico,Sinaloa
MX_SLP,America,Central America,Mexico,San Luis Potosi
MX_SON,America,Central America,Mexico,Sonora
MX_TAB,America,Central America,Mexico,Tabasco
MX_TAM,America,Central America,Mexico,Tamaulipas
MX_TLA,America,Central America,Mexico,Tlaxcala
MX_VER,America,Central America,Mexico,Veracruz de Ignacio de la Llave
MX_YUC,America,Central America,Mexico,Yucatan
MX_ZAC,America,Central America,Mexico,Zacatecas
MY,Asia,South-Eastern Asia,Malaysia,All Regions
MY_01,Asia,South-Eastern Asia,Malaysia,Johor
MY_02,Asia,South-Eastern Asia,Malaysia,Kedah
MY_03,Asia,South-Eastern Asia,Malaysia,Kelantan
MY_04,Asia,South-Eastern Asia,Malaysia,Melaka
MY_05,Asia,South-Eastern Asia,Malaysia,Negeri Sembilan
MY_06,Asia,South-Eastern Asia,Malaysia,Pahang
MY_07,Asia,South-Eastern Asia,Malaysia,Pulau Pinang
MY_08,Asia,South-Eastern Asia,Malaysia,Perak
MY_09,Asia,South-Eastern Asia,Malaysia,Perlis
MY_10,Asia,South-Eastern Asia,Malaysia,Selangor
MY_11,Asia,South-Eastern Asia,Malaysia,Terengganu
MY_12,Asia,South-Eastern Asia,Malaysia,Sabah
MY_13,Asia,South-Eastern Asia,Malaysia,Sarawak
MY_14,Asia,South-Eastern Asia,Malaysia,Wilayah Persekutuan Kuala Lumpur
MY_15,Asia,South-Eastern Asia,Malaysia,Wilayah Persekutuan Labuan
MY_16,Asia,South-Eastern Asia,Malaysia,Wilayah Persekutuan Putrajaya
MZ,Africa,Eastern Africa,Mozambique,All Regions
MZ_A,Africa,Eastern Africa,Mozambique,Niassa
MZ_B,Africa,Eastern Africa,Mozambique,Manica
MZ_G,Africa,Eastern Africa,Mozambique,Gaza
MZ_I,Africa,Eastern Africa,Mozambique,Inhambane
MZ_MPM,Africa,Eastern Africa,Mozambique,Maputo
MZ_N,Africa,Eastern Africa,Mozambique,Nampula
MZ_P,Africa,Eastern Africa,Mozambique,Cabo Delgado
MZ_Q,Africa,Eastern Africa,Mozambique,Zambezia
MZ_S,Africa,Eastern Africa,Mozambique,Sofala
MZ_T,Africa,Eastern Africa,Mozambique,Tete
NA,Africa,Southern Africa,Namibia,All Regions
NA_CA,Africa,Southern Africa,Namibia,Zambezi
NA_ER,Africa,Southern Africa,Namibia,Erongo
NA_HA,Africa,Southern Africa,Namibia,Hardap
NA_KA,Africa,Southern Africa,Namibia,Karas
NA_KE,Africa,Southern Africa,Namibia,Kavango East
NA_KH,Africa,Southern Africa,Namibia,Khomas
NA_KU,Africa,Southern Africa,Namibia,Kunene
NA_OD,Africa,Southern Africa,Namibia,Otjozondjupa
NA_OH,Africa,Southern Africa,Namibia,Omaheke
NA_ON,Africa,Southern Africa,Namibia,Oshana
NA_OS,Africa,Southern Africa,Namibia,Omusati
NA_OT,Africa,Southern Africa,Namibia,Oshikoto
NA_OW,Africa,Southern Africa,Namibia,Ohangwena
NC,Oceania,Melanesia,New Caledonia,All Regions
NC_Province_des_iles_Loyaute,Oceania,Melanesia,New Caledonia,Province des iles Loyaute
NC_Province_Nord,Oceania,Melanesia,New Caledonia,Province Nord
NC_Province_Sud,Oceania,Melanesia,New Caledonia,Province Sud
NE,Africa,Western Africa,Niger,All Regions
NE_1,Africa,Western Africa,Niger,Agadez
NE_2,Africa,Western Africa,Niger,Diffa
NE_3,Africa,Western Africa,Niger,Dosso
NE_4,Africa,Western Africa,Niger,Maradi
NE_5,Africa,Western Africa,Niger,Tahoua
NE_7,Africa,Western Africa,Niger,Zinder
NE_8,Africa,Western Africa,Niger,Niamey
NF,Oceania,Australia and New Zealand,Norfolk Island,All Regions
NF_Norfolk_Island,Oceania,Australia and New Zealand,Norfolk Island,Norfolk Island
NG,Africa,Western Africa,Nigeria,All Regions
NG_AB,Africa,Western Africa,Nigeria,Abia
NG_AD,Africa,Western Africa,Nigeria,Adamawa
NG_AK,Africa,Western Africa,Nigeria,Akwa Ibom
NG_AN,Africa,Western Africa,Nigeria,Anambra
NG_BA,Africa,Western Africa,Nigeria,Bauchi
NG_BE,Africa,Western Africa,Nigeria,Benue
NG_BO,Africa,Western Africa,Nigeria,Borno
NG_BY,Africa,Western Africa,Nigeria,Bayelsa
NG_CR,Africa,Western Africa,Nigeria,Cross River
NG_DE,Africa,Western Africa,Nigeria,Delta
NG_EB,Africa,Western Africa,Nigeria,Ebonyi
NG_ED,Africa,Western Africa,Nigeria,Edo
NG_EK,Africa,Western Africa,Nigeria,Ekiti
NG_EN,Africa,Western Africa,Nigeria,Enugu
NG_FC,Africa,Western Africa,Nigeria,Abuja Federal Capital Territory
NG_GO,Africa,Western Africa,Nigeria,Gombe
NG_IM,Africa,Western Africa,Nigeria,Imo
NG_JI,Africa,Western Africa,Nigeria,Jigawa
NG_KD,Africa,Western Africa,Nigeria,Kaduna
NG_KE,Africa,Western Africa,Nigeria,Kebbi
NG_KN,Africa,Western Africa,Nigeria,Kano
NG_KO,Africa,Western Africa,Nigeria,Kogi
NG_KT,Africa,Western Africa,Nigeria,Katsina
NG_KW,Africa,Western Africa,Nigeria,Kwara
NG_LA,Africa,Western Africa,Nigeria,Lagos
NG_NA,Africa,Western Africa,Nigeria,Nasarawa
NG_NI,Africa,Western Africa,Nigeria,Niger
NG_OG,Africa,Western Africa,Nigeria,Ogun
NG_ON,Africa,Western Africa,Nigeria,Ondo
NG_OS,Africa,Western Africa,Nigeria,Osun
NG_OY,Africa,Western Africa,Nigeria,Oyo
NG_PL,Africa,Western Africa,Nigeria,Plateau
NG_RI,Africa,Western Africa,Nigeria,Rivers
NG_SO,Africa,Western Africa,Nigeria,Sokoto
NG_TA,Africa,Western Africa,Nigeria,Taraba
NG_YO,Africa,Western Africa,Nigeria,Yobe
NG_ZA,Africa,Western Africa,Nigeria,Zamfara
NI,America,Central America,Nicaragua,All Regions
NI_AN,America,Central America,Nicaragua,Atlantico Norte
NI_AS,America,Central America,Nicaragua,Atlantico Sur
NI_BO,America,Central America,Nicaragua,Boaco
NI_CA,America,Central America,Nicaragua,Carazo
NI_CI,America,Central America,Nicaragua,Chinandega
NI_CO,America,Central America,Nicaragua,Chontales
NI_ES,America,Central America,Nicaragua,Esteli
NI_GR,America,Central America,Nicaragua,Granada
NI_JI,America,Central America,Nicaragua,Jinotega
NI_LE,America,Central America,Nicaragua,Leon
NI_MD,America,Central America,Nicaragua,Madriz
NI_MN,America,Central America,Nicaragua,Managua
NI_MS,America,Central America,Nicaragua,Masaya
NI_MT,America,Central America,Nicaragua,Matagalpa
NI_NS,America,Central America,Nicaragua,Nueva Segovia
NI_RI,America,Central America,Nicaragua,Rivas
NI_SJ,America,Central America,Nicaragua,Rio San Juan
NL,Europe,Western Europe,Netherlands,All Regions
NL_DR,Europe,Western Europe,Netherlands,Drenthe
NL_FL,Europe,Western Europe,Netherlands,Flevoland
NL_FR,Europe,Western Europe,Netherlands,Fryslan
NL_GE,Europe,Western Europe,Netherlands,Gelderland
NL_GR,Europe,Western Europe,Netherlands,Groningen
NL_LI,Europe,Western Europe,Netherlands,Limburg
NL_NB,Europe,Western Europe,Netherlands,Noord-Brabant
NL_NH,Europe,Western Europe,Netherlands,Noord-Holland
NL_OV,Europe,Western Europe,Netherlands,Overijssel
NL_UT,Europe,Western Europe,Netherlands,Utrecht
NL_ZE,Europe,Western Europe,Netherlands,Zeeland
NL_ZH,Europe,Western Europe,Netherlands,Zuid-Holland
NO,Europe,Northern Europe,Norway,All Regions
NO_01,Europe,Northern Europe,Norway,Ostfold
NO_02,Europe,Northern Europe,Norway,Akershus
NO_03,Europe,Northern Europe,Norway,Oslo
NO_04,Europe,Northern Europe,Norway,Hedmark
NO_05,Europe,Northern Europe,Norway,Oppland
NO_06,Europe,Northern Europe,Norway,Buskerud
NO_07,Europe,Northern Europe,Norway,Vestfold
NO_08,Europe,Northern Europe,Norway,Telemark
NO_09,Europe,Northern Europe,Norway,Aust-Agder
NO_10,Europe,Northern Europe,Norway,Vest-Agder
NO_11,Europe,Northern Europe,Norway,Rogaland
NO_12,Europe,Northern Europe,Norway,Hordaland
NO_14,Europe,Northern Europe,Norway,Sogn og Fjordane
NO_15,Europe,Northern Europe,Norway,More og Romsdal
NO_16,Europe,Northern Europe,Norway,Sor-Trondelag
NO_17,Europe,Northern Europe,Norway,Nord-Trondelag
NO_18,Europe,Northern Europe,Norway,Nordland
NO_19,Europe,Northern Europe,Norway,Troms
NO_20,Europe,Northern Europe,Norway,Finnmark
NP,Asia,Southern Asia,Nepal,All Regions
NP_BA,Asia,Southern Asia,Nepal,Bagmati
NP_BH,Asia,Southern Asia,Nepal,Bheri
NP_DH,Asia,Southern Asia,Nepal,Dhawalagiri
NP_GA,Asia,Southern Asia,Nepal,Gandaki
NP_JA,Asia,Southern Asia,Nepal,Janakpur
NP_KO,Asia,Southern Asia,Nepal,Kosi
NP_LU,Asia,Southern Asia,Nepal,Lumbini
NP_MA,Asia,Southern Asia,Nepal,Mahakali
NP_ME,Asia,Southern Asia,Nepal,Mechi
NP_NA,Asia,Southern Asia,Nepal,Narayani
NP_RA,Asia,Southern Asia,Nepal,Rapti
NP_SA,Asia,Southern Asia,Nepal,Sagarmatha
NP_SE,Asia,Southern Asia,Nepal,Seti
NR,Oceania,Micronesia,Nauru,All Regions
NR_14,Oceania,Micronesia,Nauru,Yaren
NU,Oceania,Polynesia,Niue,All Regions
NU_Niue,Oceania,Polynesia,Niue,Niue
NZ,Oceania,Australia and New Zealand,New Zealand,All Regions
NZ_AUK,Oceania,Australia and New Zealand,New Zealand,Auckland
NZ_BOP,Oceania,Australia and New Zealand,New Zealand,Bay of Plenty
NZ_CAN,Oceania,Australia and New Zealand,New Zealand,Canterbury
NZ_CIT,Oceania,Australia and New Zealand,New Zealand,Chatham Islands Territory
NZ_GIS,Oceania,Australia and New Zealand,New Zealand,Gisborne
NZ_HKB,Oceania,Australia and New Zealand,New Zealand,Hawke's Bay
NZ_MBH,Oceania,Australia and New Zealand,New Zealand,Marlborough
NZ_MWT,Oceania,Australia and New Zealand,New Zealand,Manawatu-Wanganui
NZ_NSN,Oceania,Australia and New Zealand,New Zealand,Nelson
NZ_NTL,Oceania,Australia and New Zealand,New Zealand,Northland
NZ_OTA,Oceania,Australia and New Zealand,New Zealand,Otago
NZ_STL,Oceania,Australia and New Zealand,New Zealand,Southland
NZ_TAS,Oceania,Australia and New Zealand,New Zealand,Tasman
NZ_TKI,Oceania,Australia and New Zealand,New Zealand,Taranaki
NZ_WGN,Oceania,Australia and New Zealand,New Zealand,Wellington
NZ_WKO,Oceania,Australia and New Zealand,New Zealand,Waikato
NZ_WTC,Oceania,Australia and New Zealand,New Zealand,West Coast
OM,Asia,Western Asia,Oman,All Regions
OM_BJ,Asia,Western Asia,Oman,Janub al Batinah
OM_BS,Asia,Western Asia,Oman,Shamal al Batinah
OM_BU,Asia,Western Asia,Oman,Al Buraymi
OM_DA,Asia,Western Asia,Oman,Ad Dakhiliyah
OM_MA,Asia,Western Asia,Oman,Masqat
OM_MU,Asia,Western Asia,Oman,Musandam
OM_SJ,Asia,Western Asia,Oman,Janub ash Sharqiyah
OM_SS,Asia,Western Asia,Oman,Shamal ash Sharqiyah
OM_WU,Asia,Western Asia,Oman,Al Wusta
OM_ZA,Asia,Western Asia,Oman,Az Zahirah
OM_ZU,Asia,Western Asia,Oman,Zufar
PA,America,Central America,Panama,All Regions
PA_1,America,Central America,Panama,Bocas del Toro
PA_2,America,Central America,Panama,Cocle
PA_3,America,Central America,Panama,Colon
PA_4,America,Central America,Panama,Chiriqui
PA_5,America,Central America,Panama,Darien
PA_6,America,Central America,Panama,Herrera
PA_7,America,Central America,Panama,Los Santos
PA_8,America,Central America,Panama,Panama
PA_9,America,Central America,Panama,Veraguas
PE,America,South America,Peru,All Regions
PE_AMA,America,South America,Peru,Amazonas
PE_ANC,America,South America,Peru,Ancash
PE_APU,America,South America,Peru,Apurimac
PE_ARE,America,South America,Peru,Arequipa
PE_AYA,America,South America,Peru,Ayacucho
PE_CAJ,America,South America,Peru,Cajamarca
PE_CAL,America,South America,Peru,El Callao
PE_CUS,America,South America,Peru,Cusco
PE_HUC,America,South America,Peru,Huanuco
PE_HUV,America,South America,Peru,Huancavelica
PE_ICA,America,South America,Peru,Ica
PE_JUN,America,South America,Peru,Junin
PE_LAL,America,South America,Peru,La Libertad
PE_LAM,America,South America,Peru,Lambayeque
PE_LIM,America,South America,Peru,Lima
PE_LOR,America,South America,Peru,Loreto
PE_MDD,America,South America,Peru,Madre de Dios
PE_MOQ,America,South America,Peru,Moquegua
PE_PAS,America,South America,Peru,Pasco
PE_PIU,America,South America,Peru,Piura
PE_PUN,America,South America,Peru,Puno
PE_SAM,America,South America,Peru,San Martin
PE_TAC,America,South America,Peru,Tacna
PE_TUM,America,South America,Peru,Tumbes
PE_UCA,America,South America,Peru,Ucayali
PF,Oceania,Polynesia,French Polynesia,All Regions
PF_Iles_du_Vent,Oceania,Polynesia,French Polynesia,Iles du Vent
PF_Iles_Marquises,Oceania,Polynesia,French Polynesia,Iles Marquises
PF_Iles_Sous_le_Vent,Oceania,Polynesia,French Polynesia,Iles Sous-le-Vent
PF_Iles_Tuamotu_Gambier,Oceania,Polynesia,French Polynesia,Iles Tuamotu-Gambier
PG,Oceania,Melanesia,Papua New Guinea,All Regions
PG_EBR,Oceania,Melanesia,Papua New Guinea,East New Britain
PG_EHG,Oceania,Melanesia,Papua New Guinea,Eastern Highlands
PG_MPL,Oceania,Melanesia,Papua New Guinea,Morobe
PG_MPM,Oceania,Melanesia,Papua New Guinea,Madang
PG_MRL,Oceania,Melanesia,Papua New Guinea,Manus
PG_NCD,Oceania,Melanesia,Papua New Guinea,National Capital District (Port Moresby)
PG_NIK,Oceania,Melanesia,Papua New Guinea,New Ireland
PG_SAN,Oceania,Melanesia,Papua New Guinea,West Sepik
PG_SHM,Oceania,Melanesia,Papua New Guinea,Southern Highlands
PG_WBK,Oceania,Melanesia,Papua New Guinea,West New Britain
PG_WPD,Oceania,Melanesia,Papua New Guinea,Western
PH,Asia,South-Eastern Asia,Philippines,All Regions
PH_00,Asia,South-Eastern Asia,Philippines,National Capital Region
PH_ABR,Asia,South-Eastern Asia,Philippines,Abra
PH_AGN,Asia,South-Eastern Asia,Philippines,Agusan del Norte
PH_AGS,Asia,South-Eastern Asia,Philippines,Agusan del Sur
PH_AKL,Asia,South-Eastern Asia,Philippines,Aklan
PH_ALB,Asia,South-Eastern Asia,Philippines,Albay
PH_ANT,Asia,South-Eastern Asia,Philippines,Antique
PH_AUR,Asia,South-Eastern Asia,Philippines,Aurora
PH_BAN,Asia,South-Eastern Asia,Philippines,Bataan
PH_BAS,Asia,South-Eastern Asia,Philippines,Basilan
PH_BEN,Asia,South-Eastern Asia,Philippines,Benguet
PH_BOH,Asia,South-Eastern Asia,Philippines,Bohol
PH_BTG,Asia,South-Eastern Asia,Philippines,Batangas
PH_BTN,Asia,South-Eastern Asia,Philippines,Batanes
PH_BUK,Asia,South-Eastern Asia,Philippines,Bukidnon
PH_BUL,Asia,South-Eastern Asia,Philippines,Bulacan
PH_CAG,Asia,South-Eastern Asia,Philippines,Cagayan
PH_CAM,Asia,South-Eastern Asia,Philippines,Camiguin
PH_CAN,Asia,South-Eastern Asia,Philippines,Camarines Norte
PH_CAP,Asia,South-Eastern Asia,Philippines,Capiz
PH_CAS,Asia,South-Eastern Asia,Philippines,Camarines Sur
PH_CAT,Asia,South-Eastern Asia,Philippines,Catanduanes
PH_CAV,Asia,South-Eastern Asia,Philippines,Cavite
PH_CEB,Asia,South-Eastern Asia,Philippines,Cebu
PH_DAO,Asia,South-Eastern Asia,Philippines,Davao Oriental
PH_DAS,Asia,South-Eastern Asia,Philippines,Davao del Sur
PH_EAS,Asia,South-Eastern Asia,Philippines,Eastern Samar
PH_IFU,Asia,South-Eastern Asia,Philippines,Ifugao
PH_ILI,Asia,South-Eastern Asia,Philippines,Iloilo
PH_ILN,Asia,South-Eastern Asia,Philippines,Ilocos Norte
PH_ILS,Asia,South-Eastern Asia,Philippines,Ilocos Sur
PH_ISA,Asia,South-Eastern Asia,Philippines,Isabela
PH_LAG,Asia,South-Eastern Asia,Philippines,Laguna
PH_LAN,Asia,South-Eastern Asia,Philippines,Lanao del Norte
PH_LAS,Asia,South-Eastern Asia,Philippines,Lanao del Sur
PH_LEY,Asia,South-Eastern Asia,Philippines,Leyte
PH_LUN,Asia,South-Eastern Asia,Philippines,La Union
PH_MAD,Asia,South-Eastern Asia,Philippines,Marinduque
PH_MAG,Asia,South-Eastern Asia,Philippines,Maguindanao
PH_MAS,Asia,South-Eastern Asia,Philippines,Masbate
PH_MDC,Asia,South-Eastern Asia,Philippines,Mindoro Occidental
PH_MDR,Asia,South-Eastern Asia,Philippines,Mindoro Oriental
PH_MOU,Asia,South-Eastern Asia,Philippines,Mountain Province
PH_MSC,Asia,South-Eastern Asia,Philippines,Misamis Occidental
PH_MSR,Asia,South-Eastern Asia,Philippines,Misamis Oriental
PH_NCO,Asia,South-Eastern Asia,Philippines,Cotabato
PH_NEC,Asia,South-Eastern Asia,Philippines,Negros Occidental
PH_NER,Asia,South-Eastern Asia,Philippines,Negros Oriental
PH_NSA,Asia,South-Eastern Asia,Philippines,Northern Samar
PH_NUE,Asia,South-Eastern Asia,Philippines,Nueva Ecija
PH_NUV,Asia,South-Eastern Asia,Philippines,Nueva Vizcaya
PH_PAM,Asia,South-Eastern Asia,Philippines,Pampanga
PH_PAN,Asia,South-Eastern Asia,Philippines,Pangasinan
PH_PLW,Asia,South-Eastern Asia,Philippines,Palawan
PH_QUE,Asia,South-Eastern Asia,Philippines,Quezon
PH_QUI,Asia,South-Eastern Asia,Philippines,Quirino
PH_RIZ,Asia,South-Eastern Asia,Philippines,Rizal
PH_ROM,Asia,South-Eastern Asia,Philippines,Romblon
PH_SCO,Asia,South-Eastern Asia,Philippines,South Cotabato
PH_SIG,Asia,South-Eastern Asia,Philippines,Siquijor
PH_SLE,Asia,South-Eastern Asia,Philippines,Southern Leyte
PH_SLU,Asia,South-Eastern Asia,Philippines,Sulu
PH_SOR,Asia,South-Eastern Asia,Philippines,Sorsogon
PH_SUK,Asia,South-Eastern Asia,Philippines,Sultan Kudarat
PH_SUN,Asia,South-Eastern Asia,Philippines,Surigao del Norte
PH_SUR,Asia,South-Eastern Asia,Philippines,Surigao del Sur
PH_TAR,Asia,South-Eastern Asia,Philippines,Tarlac
PH_TAW,Asia,South-Eastern Asia,Philippines,Tawi-Tawi
PH_WSA,Asia,South-Eastern Asia,Philippines,Samar
PH_ZAN,Asia,South-Eastern Asia,Philippines,Zamboanga del Norte
PH_ZAS,Asia,South-Eastern Asia,Philippines,Zamboanga del Sur
PH_ZMB,Asia,South-Eastern Asia,Philippines,Zambales
PK,Asia,Southern Asia,Pakistan,All Regions
PK_BA,Asia,Southern Asia,Pakistan,Balochistan
PK_GB,Asia,Southern Asia,Pakistan,Gilgit-Baltistan
PK_IS,Asia,Southern Asia,Pakistan,Islamabad
PK_JK,Asia,Southern Asia,Pakistan,Azad Jammu and Kashmir
PK_KP,Asia,Southern Asia,Pakistan,Khyber Pakhtunkhwa
PK_PB,Asia,Southern Asia,Pakistan,Punjab
PK_SD,Asia,Southern Asia,Pakistan,Sindh
PK_TA,Asia,Southern Asia,Pakistan,Federally Administered Tribal Areas
PL,Europe,Eastern Europe,Poland,All Regions
PL_DS,Europe,Eastern Europe,Poland,Dolnoslaskie
PL_KP,Europe,Eastern Europe,Poland,Kujawsko-pomorskie
PL_LB,Europe,Eastern Europe,Poland,Lubuskie
PL_LD,Europe,Eastern Europe,Poland,Lodzkie
PL_LU,Europe,Eastern Europe,Poland,Lubelskie
PL_MA,Europe,Eastern Europe,Poland,Malopolskie
PL_MZ,Europe,Eastern Europe,Poland,Mazowieckie
PL_OP,Europe,Eastern Europe,Poland,Opolskie
PL_PD,Europe,Eastern Europe,Poland,Podlaskie
PL_PK,Europe,Eastern Europe,Poland,Podkarpackie
PL_PM,Europe,Eastern Europe,Poland,Pomorskie
PL_SK,Europe,Eastern Europe,Poland,Swietokrzyskie
PL_SL,Europe,Eastern Europe,Poland,Slaskie
PL_WN,Europe,Eastern Europe,Poland,Warminsko-mazurskie
PL_WP,Europe,Eastern Europe,Poland,Wielkopolskie
PL_ZP,Europe,Eastern Europe,Poland,Zachodniopomorskie
PM,America,Northern America,Saint Pierre and Miquelon,All Regions
PM_Saint_Pierre_and_Miquelon,America,Northern America,Saint Pierre and Miquelon,Saint Pierre and Miquelon
PR,America,Caribbean,Puerto Rico,All Regions
PR_Adjuntas,America,Caribbean,Puerto Rico,Adjuntas
PR_Aguada,America,Caribbean,Puerto Rico,Aguada
PR_Aguadilla,America,Caribbean,Puerto Rico,Aguadilla
PR_Aguas_Buenas,America,Caribbean,Puerto Rico,Aguas Buenas
PR_Aibonito,America,Caribbean,Puerto Rico,Aibonito
PR_Anasco,America,Caribbean,Puerto Rico,Anasco
PR_Arecibo,America,Caribbean,Puerto Rico,Arecibo
PR_Arroyo,America,Caribbean,Puerto Rico,Arroyo
PR_Barceloneta,America,Caribbean,Puerto Rico,Barceloneta
PR_Barranquitas,America,Caribbean,Puerto Rico,Barranquitas
PR_Bayamon,America,Caribbean,Puerto Rico,Bayamon
PR_Cabo_Rojo,America,Caribbean,Puerto Rico,Cabo Rojo
PR_Caguas,America,Caribbean,Puerto Rico,Caguas
PR_Camuy,America,Caribbean,Puerto Rico,Camuy
PR_Canovanas,America,Caribbean,Puerto Rico,Canovanas
PR_Carolina,America,Caribbean,Puerto Rico,Carolina
PR_Catano,America,Caribbean,Puerto Rico,Catano
PR_Cayey,America,Caribbean,Puerto Rico,Cayey
PR_Ceiba,America,Caribbean,Puerto Rico,Ceiba
PR_Ciales,America,Caribbean,Puerto Rico,Ciales
PR_Cidra,America,Caribbean,Puerto Rico,Cidra
PR_Coamo,America,Caribbean,Puerto Rico,Coamo
PR_Comerio,America,Caribbean,Puerto Rico,Comerio
PR_Corozal,America,Caribbean,Puerto Rico,Corozal
PR_Culebra,America,Caribbean,Puerto Rico,Culebra
PR_Dorado,America,Caribbean,Puerto Rico,Dorado
PR_Fajardo,America,Caribbean,Puerto Rico,Fajardo
PR_Florida,America,Caribbean,Puerto Rico,Florida
PR_Guanica,America,Caribbean,Puerto Rico,Guanica
PR_Guayama,America,Caribbean,Puerto Rico,Guayama
PR_Guayanilla,America,Caribbean,Puerto Rico,Guayanilla
PR_Guaynabo,America,Caribbean,Puerto Rico,Guaynabo
PR_Gurabo,America,Caribbean,Puerto Rico,Gurabo
PR_Hatillo,America,Caribbean,Puerto Rico,Hatillo
PR_Hormigueros,America,Caribbean,Puerto Rico,Hormigueros
PR_Humacao,America,Caribbean,Puerto Rico,Humacao
PR_Isabela,America,Caribbean,Puerto Rico,Isabela
PR_Juana_Diaz,America,Caribbean,Puerto Rico,Juana Diaz
PR_Lajas,America,Caribbean,Puerto Rico,Lajas
PR_Lares,America,Caribbean,Puerto Rico,Lares
PR_Las_Marias,America,Caribbean,Puerto Rico,Las Marias
PR_Las_Piedras,America,Caribbean,Puerto Rico,Las Piedras
PR_Loiza,America,Caribbean,Puerto Rico,Loiza
PR_Luquillo,America,Caribbean,Puerto Rico,Luquillo
PR_Manati,America,Caribbean,Puerto Rico,Manati
PR_Maricao,America,Caribbean,Puerto Rico,Maricao
PR_Maunabo,America,Caribbean,Puerto Rico,Maunabo
PR_Mayaguez,America,Caribbean,Puerto Rico,Mayaguez
PR_Moca,America,Caribbean,Puerto Rico,Moca
PR_Morovis,America,Caribbean,Puerto Rico,Morovis
PR_Municipio_de_Jayuya,America,Caribbean,Puerto Rico,Municipio de Jayuya
PR_Municipio_de_Juncos,America,Caribbean,Puerto Rico,Municipio de Juncos
PR_Naguabo,America,Caribbean,Puerto Rico,Naguabo
PR_Naranjito,America,Caribbean,Puerto Rico,Naranjito
PR_Penuelas,America,Caribbean,Puerto Rico,Penuelas
PR_Ponce,America,Caribbean,Puerto Rico,Ponce
PR_Quebradillas,America,Caribbean,Puerto Rico,Quebradillas
PR_Rincon,America,Caribbean,Puerto Rico,Rincon
PR_Rio_Grande,America,Caribbean,Puerto Rico,Rio Grande
PR_Sabana_Grande,America,Caribbean,Puerto Rico,Sabana Grande
PR_Salinas,America,Caribbean,Puerto Rico,Salinas
PR_San_German,America,Caribbean,Puerto Rico,San German
PR_San_Juan,America,Caribbean,Puerto Rico,San Juan
PR_San_Lorenzo,America,Caribbean,Puerto Rico,San Lorenzo
PR_San_Sebastian,America,Caribbean,Puerto Rico,San Sebastian
PR_Santa_Isabel_Municipio,America,Caribbean,Puerto Rico,Santa Isabel Municipio
PR_Toa_Alta,America,Caribbean,Puerto Rico,Toa Alta
PR_Toa_Baja,America,Caribbean,Puerto Rico,Toa Baja
PR_Trujillo_Alto,America,Caribbean,Puerto Rico,Trujillo Alto
PR_Utuado,America,Caribbean,Puerto Rico,Utuado
PR_Vega_Alta,America,Caribbean,Puerto Rico,Vega Alta
PR_Vega_Baja,America,Caribbean,Puerto Rico,Vega Baja
PR_Vieques,America,Caribbean,Puerto Rico,Vieques
PR_Villalba,America,Caribbean,Puerto Rico,Villalba
PR_Yabucoa,America,Caribbean,Puerto Rico,Yabucoa
PR_Yauco,America,Caribbean,Puerto Rico,Yauco
PS,Asia,Western Asia,State of Palestine,All Regions
PS_BTH,Asia,Western Asia,State of Palestine,Bethlehem
PS_GZA,Asia,Western Asia,State of Palestine,Gaza
PS_HBN,Asia,Western Asia,State of Palestine,Hebron
PS_JEM,Asia,Western Asia,State of Palestine,Jerusalem
PS_JEN,Asia,Western Asia,State of Palestine,Jenin
PS_JRH,Asia,Western Asia,State of Palestine,Jericho and Al Aghwar
PS_NBS,Asia,Western Asia,State of Palestine,Nablus
PS_QQA,Asia,Western Asia,State of Palestine,Qalqilya
PS_RBH,Asia,Western Asia,State of Palestine,Ramallah
PS_SLT,Asia,Western Asia,State of Palestine,Salfit
PS_TBS,Asia,Western Asia,State of Palestine,Tubas
PS_TKM,Asia,Western Asia,State of Palestine,Tulkarm
PT,Europe,Southern Europe,Portugal,All Regions
PT_01,Europe,Southern Europe,Portugal,Aveiro
PT_02,Europe,Southern Europe,Portugal,Beja
PT_03,Europe,Southern Europe,Portugal,Braga
PT_04,Europe,Southern Europe,Portugal,Braganca
PT_05,Europe,Southern Europe,Portugal,Castelo Branco
PT_06,Europe,Southern Europe,Portugal,Coimbra
PT_07,Europe,Southern Europe,Portugal,Evora
PT_08,Europe,Southern Europe,Portugal,Faro
PT_09,Europe,Southern Europe,Portugal,Guarda
PT_10,Europe,Southern Europe,Portugal,Leiria
PT_11,Europe,Southern Europe,Portugal,Lisboa
PT_12,Europe,Southern Europe,Portugal,Portalegre
PT_13,Europe,Southern Europe,Portugal,Porto
PT_14,Europe,Southern Europe,Portugal,Santarem
PT_15,Europe,Southern Europe,Portugal,Setubal
PT_16,Europe,Southern Europe,Portugal,Viana do Castelo
PT_17,Europe,Southern Europe,Portugal,Vila Real
PT_18,Europe,Southern Europe,Portugal,Viseu
PT_20,Europe,Southern Europe,Portugal,Regiao Autonoma dos Acores
PT_30,Europe,Southern Europe,Portugal,Regiao Autonoma da Madeira
PW,Oceania,Micronesia,Palau,All Regions
PW_004,Oceania,Micronesia,Palau,Airai
PW_150,Oceania,Micronesia,Palau,Koror
PW_212,Oceania,Micronesia,Palau,Melekeok
PY,America,South America,Paraguay,All Regions
PY_1,America,South America,Paraguay,Concepcion
PY_10,America,South America,Paraguay,Alto Parana
PY_11,America,South America,Paraguay,Central
PY_12,America,South America,Paraguay,Neembucu
PY_13,America,South America,Paraguay,Amambay
PY_14,America,South America,Paraguay,Canindeyu
PY_15,America,South America,Paraguay,Presidente Hayes
PY_16,America,South America,Paraguay,Alto Paraguay
PY_19,America,South America,Paraguay,Boqueron
PY_2,America,South America,Paraguay,San Pedro
PY_3,America,South America,Paraguay,Cordillera
PY_4,America,South America,Paraguay,Guaira
PY_5,America,South America,Paraguay,Caaguazu
PY_6,America,South America,Paraguay,Caazapa
PY_7,America,South America,Paraguay,Itapua
PY_8,America,South America,Paraguay,Misiones
PY_9,America,South America,Paraguay,Paraguari
PY_ASU,America,South America,Paraguay,Asuncion
QA,Asia,Western Asia,Qatar,All Regions
QA_DA,Asia,Western Asia,Qatar,Ad Dawhah
QA_KH,Asia,Western Asia,Qatar,Al Khawr wa adh Dhakhirah
QA_MS,Asia,Western Asia,Qatar,Ash Shamal
QA_RA,Asia,Western Asia,Qatar,Ar Rayyan
QA_US,Asia,Western Asia,Qatar,Umm Salal
QA_WA,Asia,Western Asia,Qatar,Al Wakrah
QA_ZA,Asia,Western Asia,Qatar,Az Za'ayin
RE,Africa,Eastern Africa,Réunion,All Regions
RE_Reunion,Africa,Eastern Africa,Réunion,Reunion
RO,Europe,Eastern Europe,Romania,All Regions
RO_AB,Europe,Eastern Europe,Romania,Alba
RO_AG,Europe,Eastern Europe,Romania,Arges
RO_AR,Europe,Eastern Europe,Romania,Arad
RO_B,Europe,Eastern Europe,Romania,Bucuresti
RO_BC,Europe,Eastern Europe,Romania,Bacau
RO_BH,Europe,Eastern Europe,Romania,Bihor
RO_BN,Europe,Eastern Europe,Romania,Bistrita-Nasaud
RO_BR,Europe,Eastern Europe,Romania,Braila
RO_BT,Europe,Eastern Europe,Romania,Botosani
RO_BV,Europe,Eastern Europe,Romania,Brasov
RO_BZ,Europe,Eastern Europe,Romania,Buzau
RO_CJ,Europe,Eastern Europe,Romania,Cluj
RO_CL,Europe,Eastern Europe,Romania,Calarasi
RO_CS,Europe,Eastern Europe,Romania,Caras-Severin
RO_CT,Europe,Eastern Europe,Romania,Constanta
RO_CV,Europe,Eastern Europe,Romania,Covasna
RO_DB,Europe,Eastern Europe,Romania,Dambovita
RO_DJ,Europe,Eastern Europe,Romania,Dolj
RO_GJ,Europe,Eastern Europe,Romania,Gorj
RO_GL,Europe,Eastern Europe,Romania,Galati
RO_GR,Europe,Eastern Europe,Romania,Giurgiu
RO_HD,Europe,Eastern Europe,Romania,Hunedoara
RO_HR,Europe,Eastern Europe,Romania,Harghita
RO_IF,Europe,Eastern Europe,Romania,Ilfov
RO_IL,Europe,Eastern Europe,Romania,Ialomita
RO_IS,Europe,Eastern Europe,Romania,Iasi
RO_MH,Europe,Eastern Europe,Romania,Mehedinti
RO_MM,Europe,Eastern Europe,Romania,Maramures
RO_MS,Europe,Eastern Europe,Romania,Mures
RO_NT,Europe,Eastern Europe,Romania,Neamt
RO_OT,Europe,Eastern Europe,Romania,Olt
RO_PH,Europe,Eastern Europe,Romania,Prahova
RO_SB,Europe,Eastern Europe,Romania,Sibiu
RO_SJ,Europe,Eastern Europe,Romania,Salaj
RO_SM,Europe,Eastern Europe,Romania,Satu Mare
RO_SV,Europe,Eastern Europe,Romania,Suceava
RO_TL,Europe,Eastern Europe,Romania,Tulcea
RO_TM,Europe,Eastern Europe,Romania,Timis
RO_TR,Europe,Eastern Europe,Romania,Teleorman
RO_VL,Europe,Eastern Europe,Romania,Valcea
RO_VN,Europe,Eastern Europe,Romania,Vrancea
RO_VS,Europe,Eastern Europe,Romania,Vaslui
RS,Europe,Southern Europe,Serbia,All Regions
RS_00,Europe,Southern Europe,Serbia,Beograd
RS_01,Europe,Southern Europe,Serbia,Severnobacki okrug
RS_02,Europe,Southern Europe,Serbia,Srednjebanatski okrug
RS_03,Europe,Southern Europe,Serbia,Severnobanatski okrug
RS_04,Europe,Southern Europe,Serbia,Juznobanatski okrug
RS_05,Europe,Southern Europe,Serbia,Zapadnobacki okrug
RS_06,Europe,Southern Europe,Serbia,Juznobacki okrug
RS_07,Europe,Southern Europe,Serbia,Sremski okrug
RS_08,Europe,Southern Europe,Serbia,Macvanski okrug
RS_09,Europe,Southern Europe,Serbia,Kolubarski okrug
RS_10,Europe,Southern Europe,Serbia,Podunavski okrug
RS_11,Europe,Southern Europe,Serbia,Branicevski okrug
RS_12,Europe,Southern Europe,Serbia,Sumadijski okrug
RS_14,Europe,Southern Europe,Serbia,Borski okrug
RS_15,Europe,Southern Europe,Serbia,Zajecarski okrug
RS_16,Europe,Southern Europe,Serbia,Zlatiborski okrug
RS_17,Europe,Southern Europe,Serbia,Moravicki okrug
RS_18,Europe,Southern Europe,Serbia,Raski okrug
RS_19,Europe,Southern Europe,Serbia,Rasinski okrug
RS_20,Europe,Southern Europe,Serbia,Nisavski okrug
RS_21,Europe,Southern Europe,Serbia,Toplicki okrug
RS_22,Europe,Southern Europe,Serbia,Pirotski okrug
RS_23,Europe,Southern Europe,Serbia,Jablanicki okrug
RS_24,Europe,Southern Europe,Serbia,Pcinjski okrug
RS_26,Europe,Southern Europe,Serbia,Pecki okrug
RS_27,Europe,Southern Europe,Serbia,Prizrenski okrug
RS_28,Europe,Southern Europe,Serbia,Kosovsko-Mitrovacki okrug
RU,Europe,Eastern Europe,Russian Federation,All Regions
RU_AD,Europe,Eastern Europe,Russian Federation,Adygeya, Respublika
RU_AL,Europe,Eastern Europe,Russian Federation,Altay, Respublika
RU_ALT,Europe,Eastern Europe,Russian Federation,Altayskiy kray
RU_AMU,Europe,Eastern Europe,Russian Federation,Amurskaya oblast'
RU_ARK,Europe,Eastern Europe,Russian Federation,Arkhangel'skaya oblast'
RU_AST,Europe,Eastern Europe,Russian Federation,Astrakhanskaya oblast'
RU_BA,Europe,Eastern Europe,Russian Federation,Bashkortostan, Respublika
RU_BEL,Europe,Eastern Europe,Russian Federation,Belgorodskaya oblast'
RU_BRY,Europe,Eastern Europe,Russian Federation,Bryanskaya oblast'
RU_BU,Europe,Eastern Europe,Russian Federation,Buryatiya, Respublika
RU_CE,Europe,Eastern Europe,Russian Federation,Chechenskaya Respublika
RU_CHE,Europe,Eastern Europe,Russian Federation,Chelyabinskaya oblast'
RU_CHU,Europe,Eastern Europe,Russian Federation,Chukotskiy avtonomnyy okrug
RU_CU,Europe,Eastern Europe,Russian Federation,Chuvashskaya Respublika
RU_DA,Europe,Eastern Europe,Russian Federation,Dagestan, Respublika
RU_IN,Europe,Eastern Europe,Russian Federation,Ingushetiya, Respublika
RU_IRK,Europe,Eastern Europe,Russian Federation,Irkutskaya oblast'
RU_IVA,Europe,Eastern Europe,Russian Federation,Ivanovskaya oblast'
RU_KAM,Europe,Eastern Europe,Russian Federation,Kamchatskiy kray
RU_KB,Europe,Eastern Europe,Russian Federation,Kabardino-Balkarskaya Respublika
RU_KC,Europe,Eastern Europe,Russian Federation,Karachayevo-Cherkesskaya Respublika
RU_KDA,Europe,Eastern Europe,Russian Federation,Krasnodarskiy kray
RU_KEM,Europe,Eastern Europe,Russian Federation,Kemerovskaya oblast'
RU_KGD,Europe,Eastern Europe,Russian Federation,Kaliningradskaya oblast'
RU_KGN,Europe,Eastern Europe,Russian Federation,Kurganskaya oblast'
RU_KHA,Europe,Eastern Europe,Russian Federation,Khabarovskiy kray
RU_KHM,Europe,Eastern Europe,Russian Federation,Khanty-Mansiyskiy avtonomnyy okrug
RU_KIR,Europe,Eastern Europe,Russian Federation,Kirovskaya oblast'
RU_KK,Europe,Eastern Europe,Russian Federation,Khakasiya, Respublika
RU_KL,Europe,Eastern Europe,Russian Federation,Kalmykiya, Respublika
RU_KLU,Europe,Eastern Europe,Russian Federation,Kaluzhskaya oblast'
RU_KO,Europe,Eastern Europe,Russian Federation,Komi, Respublika
RU_KOS,Europe,Eastern Europe,Russian Federation,Kostromskaya oblast'
RU_KR,Europe,Eastern Europe,Russian Federation,Kareliya, Respublika
RU_KRS,Europe,Eastern Europe,Russian Federation,Kurskaya oblast'
RU_KYA,Europe,Eastern Europe,Russian Federation,Krasnoyarskiy kray
RU_LEN,Europe,Eastern Europe,Russian Federation,Leningradskaya oblast'
RU_LIP,Europe,Eastern Europe,Russian Federation,Lipetskaya oblast'
RU_MAG,Europe,Eastern Europe,Russian Federation,Magadanskaya oblast'
RU_ME,Europe,Eastern Europe,Russian Federation,Mariy El, Respublika
RU_MO,Europe,Eastern Europe,Russian Federation,Mordoviya, Respublika
RU_MOS,Europe,Eastern Europe,Russian Federation,Moskovskaya oblast'
RU_MOW,Europe,Eastern Europe,Russian Federation,Moskva
RU_MUR,Europe,Eastern Europe,Russian Federation,Murmanskaya oblast'
RU_NEN,Europe,Eastern Europe,Russian Federation,Nenetskiy avtonomnyy okrug
RU_NGR,Europe,Eastern Europe,Russian Federation,Novgorodskaya oblast'
RU_NIZ,Europe,Eastern Europe,Russian Federation,Nizhegorodskaya oblast'
RU_NVS,Europe,Eastern Europe,Russian Federation,Novosibirskaya oblast'
RU_OMS,Europe,Eastern Europe,Russian Federation,Omskaya oblast'
RU_ORE,Europe,Eastern Europe,Russian Federation,Orenburgskaya oblast'
RU_ORL,Europe,Eastern Europe,Russian Federation,Orlovskaya oblast'
RU_PER,Europe,Eastern Europe,Russian Federation,Permskiy kray
RU_PNZ,Europe,Eastern Europe,Russian Federation,Penzenskaya oblast'
RU_PRI,Europe,Eastern Europe,Russian Federation,Primorskiy kray
RU_PSK,Europe,Eastern Europe,Russian Federation,Pskovskaya oblast'
RU_ROS,Europe,Eastern Europe,Russian Federation,Rostovskaya oblast'
RU_RYA,Europe,Eastern Europe,Russian Federation,Ryazanskaya oblast'
RU_SA,Europe,Eastern Europe,Russian Federation,Saha, Respublika
RU_SAK,Europe,Eastern Europe,Russian Federation,Sakhalinskaya oblast'
RU_SAM,Europe,Eastern Europe,Russian Federation,Samarskaya oblast'
RU_SAR,Europe,Eastern Europe,Russian Federation,Saratovskaya oblast'
RU_SE,Europe,Eastern Europe,Russian Federation,Severnaya Osetiya, Respublika
RU_SMO,Europe,Eastern Europe,Russian Federation,Smolenskaya oblast'
RU_SPE,Europe,Eastern Europe,Russian Federation,Sankt-Peterburg
RU_STA,Europe,Eastern Europe,Russian Federation,Stavropol'skiy kray
RU_SVE,Europe,Eastern Europe,Russian Federation,Sverdlovskaya oblast'
RU_TA,Europe,Eastern Europe,Russian Federation,Tatarstan, Respublika
RU_TAM,Europe,Eastern Europe,Russian Federation,Tambovskaya oblast'
RU_TOM,Europe,Eastern Europe,Russian Federation,Tomskaya oblast'
RU_TUL,Europe,Eastern Europe,Russian Federation,Tul'skaya oblast'
RU_TVE,Europe,Eastern Europe,Russian Federation,Tverskaya oblast'
RU_TY,Europe,Eastern Europe,Russian Federation,Tyva, Respublika
RU_TYU,Europe,Eastern Europe,Russian Federation,Tyumenskaya oblast'
RU_UD,Europe,Eastern Europe,Russian Federation,Udmurtskaya Respublika
RU_ULY,Europe,Eastern Europe,Russian Federation,Ul'yanovskaya oblast'
RU_VGG,Europe,Eastern Europe,Russian Federation,Volgogradskaya oblast'
RU_VLA,Europe,Eastern Europe,Russian Federation,Vladimirskaya oblast'
RU_VLG,Europe,Eastern Europe,Russian Federation,Vologodskaya oblast'
RU_VOR,Europe,Eastern Europe,Russian Federation,Voronezhskaya oblast'
RU_YAN,Europe,Eastern Europe,Russian Federation,Yamalo-Nenetskiy avtonomnyy okrug
RU_YAR,Europe,Eastern Europe,Russian Federation,Yaroslavskaya oblast'
RU_YEV,Europe,Eastern Europe,Russian Federation,Yevreyskaya avtonomnaya oblast'
RU_ZAB,Europe,Eastern Europe,Russian Federation,Zabaykal'skiy kray
RW,Africa,Eastern Africa,Rwanda,All Regions
RW_01,Africa,Eastern Africa,Rwanda,Ville de Kigali
RW_02,Africa,Eastern Africa,Rwanda,Est
RW_03,Africa,Eastern Africa,Rwanda,Nord
RW_04,Africa,Eastern Africa,Rwanda,Ouest
RW_05,Africa,Eastern Africa,Rwanda,Sud
SA,Asia,Western Asia,Saudi Arabia,All Regions
SA_01,Asia,Western Asia,Saudi Arabia,Ar Riyad
SA_02,Asia,Western Asia,Saudi Arabia,Makkah al Mukarramah
SA_03,Asia,Western Asia,Saudi Arabia,Al Madinah al Munawwarah
SA_04,Asia,Western Asia,Saudi Arabia,Ash Sharqiyah
SA_05,Asia,Western Asia,Saudi Arabia,Al Qasim
SA_06,Asia,Western Asia,Saudi Arabia,Ha'il
SA_07,Asia,Western Asia,Saudi Arabia,Tabuk
SA_08,Asia,Western Asia,Saudi Arabia,Al Hudud ash Shamaliyah
SA_09,Asia,Western Asia,Saudi Arabia,Jazan
SA_10,Asia,Western Asia,Saudi Arabia,Najran
SA_11,Asia,Western Asia,Saudi Arabia,Al Bahah
SA_12,Asia,Western Asia,Saudi Arabia,Al Jawf
SA_14,Asia,Western Asia,Saudi Arabia,'Asir
SB,Oceania,Melanesia,Solomon Islands,All Regions
SB_GU,Oceania,Melanesia,Solomon Islands,Guadalcanal
SB_WE,Oceania,Melanesia,Solomon Islands,Western
SC,Africa,Eastern Africa,Seychelles,All Regions
SC_16,Africa,Eastern Africa,Seychelles,English River
SD,Africa,Northern Africa,Sudan,All Regions
SD_DN,Africa,Northern Africa,Sudan,North Darfur
SD_DS,Africa,Northern Africa,Sudan,South Darfur
SD_DW,Africa,Northern Africa,Sudan,West Darfur
SD_GD,Africa,Northern Africa,Sudan,Gedaref
SD_GZ,Africa,Northern Africa,Sudan,Gezira
SD_KA,Africa,Northern Africa,Sudan,Kassala
SD_KH,Africa,Northern Africa,Sudan,Khartoum
SD_KN,Africa,Northern Africa,Sudan,North Kordofan
SD_KS,Africa,Northern Africa,Sudan,South Kordofan
SD_NB,Africa,Northern Africa,Sudan,Blue Nile
SD_NO,Africa,Northern Africa,Sudan,Northern
SD_NR,Africa,Northern Africa,Sudan,River Nile
SD_NW,Africa,Northern Africa,Sudan,White Nile
SD_RS,Africa,Northern Africa,Sudan,Red Sea
SD_SI,Africa,Northern Africa,Sudan,Sennar
SE,Europe,Northern Europe,Sweden,All Regions
SE_AB,Europe,Northern Europe,Sweden,Stockholms lan
SE_AC,Europe,Northern Europe,Sweden,Vasterbottens lan
SE_BD,Europe,Northern Europe,Sweden,Norrbottens lan
SE_C,Europe,Northern Europe,Sweden,Uppsala lan
SE_D,Europe,Northern Europe,Sweden,Sodermanlands lan
SE_E,Europe,Northern Europe,Sweden,Ostergotlands lan
SE_F,Europe,Northern Europe,Sweden,Jonkopings lan
SE_G,Europe,Northern Europe,Sweden,Kronobergs lan
SE_H,Europe,Northern Europe,Sweden,Kalmar lan
SE_I,Europe,Northern Europe,Sweden,Gotlands lan
SE_K,Europe,Northern Europe,Sweden,Blekinge lan
SE_M,Europe,Northern Europe,Sweden,Skane lan
SE_N,Europe,Northern Europe,Sweden,Hallands lan
SE_O,Europe,Northern Europe,Sweden,Vastra Gotalands lan
SE_S,Europe,Northern Europe,Sweden,Varmlands lan
SE_T,Europe,Northern Europe,Sweden,Orebro lan
SE_U,Europe,Northern Europe,Sweden,Vastmanlands lan
SE_W,Europe,Northern Europe,Sweden,Dalarnas lan
SE_X,Europe,Northern Europe,Sweden,Gavleborgs lan
SE_Y,Europe,Northern Europe,Sweden,Vasternorrlands lan
SE_Z,Europe,Northern Europe,Sweden,Jamtlands lan
SG,Asia,South-Eastern Asia,Singapore,All Regions
SG_Singapore,Asia,South-Eastern Asia,Singapore,Singapore
SH,Africa,Western Africa,Saint Helena,All Regions
SH_HL,Africa,Western Africa,Saint Helena,Saint Helena
SI,Europe,Southern Europe,Slovenia,All Regions
SI_001,Europe,Southern Europe,Slovenia,Ajdovscina
SI_003,Europe,Southern Europe,Slovenia,Bled
SI_004,Europe,Southern Europe,Slovenia,Bohinj
SI_005,Europe,Southern Europe,Slovenia,Borovnica
SI_006,Europe,Southern Europe,Slovenia,Bovec
SI_008,Europe,Southern Europe,Slovenia,Brezovica
SI_009,Europe,Southern Europe,Slovenia,Brezice
SI_011,Europe,Southern Europe,Slovenia,Celje
SI_013,Europe,Southern Europe,Slovenia,Cerknica
SI_014,Europe,Southern Europe,Slovenia,Cerkno
SI_015,Europe,Southern Europe,Slovenia,Crensovci
SI_017,Europe,Southern Europe,Slovenia,Crnomelj
SI_018,Europe,Southern Europe,Slovenia,Destrnik
SI_019,Europe,Southern Europe,Slovenia,Divaca
SI_023,Europe,Southern Europe,Slovenia,Domzale
SI_025,Europe,Southern Europe,Slovenia,Dravograd
SI_029,Europe,Southern Europe,Slovenia,Gornja Radgona
SI_032,Europe,Southern Europe,Slovenia,Grosuplje
SI_034,Europe,Southern Europe,Slovenia,Hrastnik
SI_036,Europe,Southern Europe,Slovenia,Idrija
SI_037,Europe,Southern Europe,Slovenia,Ig
SI_038,Europe,Southern Europe,Slovenia,Ilirska Bistrica
SI_039,Europe,Southern Europe,Slovenia,Ivancna Gorica
SI_040,Europe,Southern Europe,Slovenia,Izola
SI_041,Europe,Southern Europe,Slovenia,Jesenice
SI_043,Europe,Southern Europe,Slovenia,Kamnik
SI_044,Europe,Southern Europe,Slovenia,Kanal
SI_045,Europe,Southern Europe,Slovenia,Kidricevo
SI_046,Europe,Southern Europe,Slovenia,Kobarid
SI_048,Europe,Southern Europe,Slovenia,Kocevje
SI_050,Europe,Southern Europe,Slovenia,Koper
SI_052,Europe,Southern Europe,Slovenia,Kranj
SI_053,Europe,Southern Europe,Slovenia,Kranjska Gora
SI_054,Europe,Southern Europe,Slovenia,Krsko
SI_057,Europe,Southern Europe,Slovenia,Lasko
SI_058,Europe,Southern Europe,Slovenia,Lenart
SI_059,Europe,Southern Europe,Slovenia,Lendava
SI_060,Europe,Southern Europe,Slovenia,Litija
SI_061,Europe,Southern Europe,Slovenia,Ljubljana
SI_063,Europe,Southern Europe,Slovenia,Ljutomer
SI_064,Europe,Southern Europe,Slovenia,Logatec
SI_070,Europe,Southern Europe,Slovenia,Maribor
SI_071,Europe,Southern Europe,Slovenia,Medvode
SI_072,Europe,Southern Europe,Slovenia,Menges
SI_073,Europe,Southern Europe,Slovenia,Metlika
SI_074,Europe,Southern Europe,Slovenia,Mezica
SI_075,Europe,Southern Europe,Slovenia,Miren-Kostanjevica
SI_076,Europe,Southern Europe,Slovenia,Mislinja
SI_079,Europe,Southern Europe,Slovenia,Mozirje
SI_080,Europe,Southern Europe,Slovenia,Murska Sobota
SI_081,Europe,Southern Europe,Slovenia,Muta
SI_084,Europe,Southern Europe,Slovenia,Nova Gorica
SI_085,Europe,Southern Europe,Slovenia,Novo Mesto
SI_086,Europe,Southern Europe,Slovenia,Odranci
SI_087,Europe,Southern Europe,Slovenia,Ormoz
SI_090,Europe,Southern Europe,Slovenia,Piran
SI_091,Europe,Southern Europe,Slovenia,Pivka
SI_094,Europe,Southern Europe,Slovenia,Postojna
SI_096,Europe,Southern Europe,Slovenia,Ptuj
SI_098,Europe,Southern Europe,Slovenia,Race-Fram
SI_099,Europe,Southern Europe,Slovenia,Radece
SI_100,Europe,Southern Europe,Slovenia,Radenci
SI_101,Europe,Southern Europe,Slovenia,Radlje ob Dravi
SI_102,Europe,Southern Europe,Slovenia,Radovljica
SI_103,Europe,Southern Europe,Slovenia,Ravne na Koroskem
SI_104,Europe,Southern Europe,Slovenia,Ribnica
SI_106,Europe,Southern Europe,Slovenia,Rogaska Slatina
SI_108,Europe,Southern Europe,Slovenia,Ruse
SI_110,Europe,Southern Europe,Slovenia,Sevnica
SI_111,Europe,Southern Europe,Slovenia,Sezana
SI_112,Europe,Southern Europe,Slovenia,Slovenj Gradec
SI_113,Europe,Southern Europe,Slovenia,Slovenska Bistrica
SI_114,Europe,Southern Europe,Slovenia,Slovenske Konjice
SI_117,Europe,Southern Europe,Slovenia,Sencur
SI_118,Europe,Southern Europe,Slovenia,Sentilj
SI_120,Europe,Southern Europe,Slovenia,Sentjur
SI_122,Europe,Southern Europe,Slovenia,Skofja Loka
SI_123,Europe,Southern Europe,Slovenia,Skofljica
SI_126,Europe,Southern Europe,Slovenia,Sostanj
SI_127,Europe,Southern Europe,Slovenia,Store
SI_128,Europe,Southern Europe,Slovenia,Tolmin
SI_129,Europe,Southern Europe,Slovenia,Trbovlje
SI_130,Europe,Southern Europe,Slovenia,Trebnje
SI_131,Europe,Southern Europe,Slovenia,Trzic
SI_132,Europe,Southern Europe,Slovenia,Turnisce
SI_133,Europe,Southern Europe,Slovenia,Velenje
SI_136,Europe,Southern Europe,Slovenia,Vipava
SI_138,Europe,Southern Europe,Slovenia,Vodice
SI_139,Europe,Southern Europe,Slovenia,Vojnik
SI_140,Europe,Southern Europe,Slovenia,Vrhnika
SI_141,Europe,Southern Europe,Slovenia,Vuzenica
SI_142,Europe,Southern Europe,Slovenia,Zagorje ob Savi
SI_144,Europe,Southern Europe,Slovenia,Zrece
SI_146,Europe,Southern Europe,Slovenia,Zelezniki
SI_147,Europe,Southern Europe,Slovenia,Ziri
SI_160,Europe,Southern Europe,Slovenia,Hoce-Slivnica
SI_162,Europe,Southern Europe,Slovenia,Horjul
SI_167,Europe,Southern Europe,Slovenia,Lovrenc na Pohorju
SI_169,Europe,Southern Europe,Slovenia,Miklavz na Dravskem Polju
SI_171,Europe,Southern Europe,Slovenia,Oplotnica
SI_173,Europe,Southern Europe,Slovenia,Polzela
SI_174,Europe,Southern Europe,Slovenia,Prebold
SI_175,Europe,Southern Europe,Slovenia,Prevalje
SI_183,Europe,Southern Europe,Slovenia,Sempeter-Vrtojba
SI_186,Europe,Southern Europe,Slovenia,Trzin
SI_190,Europe,Southern Europe,Slovenia,Zalec
SI_193,Europe,Southern Europe,Slovenia,Zuzemberk
SI_200,Europe,Southern Europe,Slovenia,Poljcane
SI_203,Europe,Southern Europe,Slovenia,Straza
SI_208,Europe,Southern Europe,Slovenia,Log-Dragomer
SK,Europe,Eastern Europe,Slovakia,All Regions
SK_BC,Europe,Eastern Europe,Slovakia,Banskobystricky kraj
SK_BL,Europe,Eastern Europe,Slovakia,Bratislavsky kraj
SK_KI,Europe,Eastern Europe,Slovakia,Kosicky kraj
SK_NI,Europe,Eastern Europe,Slovakia,Nitriansky kraj
SK_PV,Europe,Eastern Europe,Slovakia,Presovsky kraj
SK_TA,Europe,Eastern Europe,Slovakia,Trnavsky kraj
SK_TC,Europe,Eastern Europe,Slovakia,Trenciansky kraj
SK_ZI,Europe,Eastern Europe,Slovakia,Zilinsky kraj
SL,Africa,Western Africa,Sierra Leone,All Regions
SL_E,Africa,Western Africa,Sierra Leone,Eastern
SL_N,Africa,Western Africa,Sierra Leone,Northern
SL_W,Africa,Western Africa,Sierra Leone,Western Area
SM,Europe,Southern Europe,San Marino,All Regions
SM_07,Europe,Southern Europe,San Marino,San Marino
SM_09,Europe,Southern Europe,San Marino,Serravalle
SN,Africa,Western Africa,Senegal,All Regions
SN_DB,Africa,Western Africa,Senegal,Diourbel
SN_DK,Africa,Western Africa,Senegal,Dakar
SN_FK,Africa,Western Africa,Senegal,Fatick
SN_KA,Africa,Western Africa,Senegal,Kaffrine
SN_KD,Africa,Western Africa,Senegal,Kolda
SN_KE,Africa,Western Africa,Senegal,Kedougou
SN_KL,Africa,Western Africa,Senegal,Kaolack
SN_LG,Africa,Western Africa,Senegal,Louga
SN_MT,Africa,Western Africa,Senegal,Matam
SN_SL,Africa,Western Africa,Senegal,Saint-Louis
SN_TC,Africa,Western Africa,Senegal,Tambacounda
SN_TH,Africa,Western Africa,Senegal,Thies
SN_ZG,Africa,Western Africa,Senegal,Ziguinchor
SO,Africa,Eastern Africa,Somalia,All Regions
SO_AW,Africa,Eastern Africa,Somalia,Awdal
SO_BN,Africa,Eastern Africa,Somalia,Banaadir
SO_BR,Africa,Eastern Africa,Somalia,Bari
SO_GA,Africa,Eastern Africa,Somalia,Galguduud
SO_MU,Africa,Eastern Africa,Somalia,Mudug
SO_NU,Africa,Eastern Africa,Somalia,Nugaal
SO_SA,Africa,Eastern Africa,Somalia,Sanaag
SO_TO,Africa,Eastern Africa,Somalia,Togdheer
SO_WO,Africa,Eastern Africa,Somalia,Woqooyi Galbeed
SR,America,South America,Suriname,All Regions
SR_BR,America,South America,Suriname,Brokopondo
SR_CM,America,South America,Suriname,Commewijne
SR_NI,America,South America,Suriname,Nickerie
SR_PM,America,South America,Suriname,Paramaribo
SR_PR,America,South America,Suriname,Para
SR_SA,America,South America,Suriname,Saramacca
SR_WA,America,South America,Suriname,Wanica
SS,Africa,Eastern Africa,South Sudan,All Regions
SS_EC,Africa,Eastern Africa,South Sudan,Central Equatoria
SS_EE,Africa,Eastern Africa,South Sudan,Eastern Equatoria
SS_EW,Africa,Eastern Africa,South Sudan,Western Equatoria
SS_LK,Africa,Eastern Africa,South Sudan,Lakes
SS_NU,Africa,Eastern Africa,South Sudan,Upper Nile
SS_UY,Africa,Eastern Africa,South Sudan,Unity
ST,Africa,Middle Africa,Sao Tome and Principe,All Regions
ST_P,Africa,Middle Africa,Sao Tome and Principe,Principe
ST_S,Africa,Middle Africa,Sao Tome and Principe,Sao Tome
SV,America,Central America,El Salvador,All Regions
SV_AH,America,Central America,El Salvador,Ahuachapan
SV_CA,America,Central America,El Salvador,Cabanas
SV_CH,America,Central America,El Salvador,Chalatenango
SV_CU,America,Central America,El Salvador,Cuscatlan
SV_LI,America,Central America,El Salvador,La Libertad
SV_MO,America,Central America,El Salvador,Morazan
SV_PA,America,Central America,El Salvador,La Paz
SV_SA,America,Central America,El Salvador,Santa Ana
SV_SM,America,Central America,El Salvador,San Miguel
SV_SO,America,Central America,El Salvador,Sonsonate
SV_SS,America,Central America,El Salvador,San Salvador
SV_SV,America,Central America,El Salvador,San Vicente
SV_UN,America,Central America,El Salvador,La Union
SV_US,America,Central America,El Salvador,Usulutan
SX,America,Caribbean,Sint Maarten (Dutch part),All Regions
SX_Sint_Maarten,America,Caribbean,Sint Maarten (Dutch part),Sint Maarten
SY,Asia,Western Asia,Syrian Arab Republic,All Regions
SY_DI,Asia,Western Asia,Syrian Arab Republic,Dimashq
SY_DR,Asia,Western Asia,Syrian Arab Republic,Dar'a
SY_DY,Asia,Western Asia,Syrian Arab Republic,Dayr az Zawr
SY_HA,Asia,Western Asia,Syrian Arab Republic,Al Hasakah
SY_HI,Asia,Western Asia,Syrian Arab Republic,Hims
SY_HL,Asia,Western Asia,Syrian Arab Republic,Halab
SY_HM,Asia,Western Asia,Syrian Arab Republic,Hamah
SY_ID,Asia,Western Asia,Syrian Arab Republic,Idlib
SY_LA,Asia,Western Asia,Syrian Arab Republic,Al Ladhiqiyah
SY_QU,Asia,Western Asia,Syrian Arab Republic,Al Qunaytirah
SY_RA,Asia,Western Asia,Syrian Arab Republic,Ar Raqqah
SY_RD,Asia,Western Asia,Syrian Arab Republic,Rif Dimashq
SY_SU,Asia,Western Asia,Syrian Arab Republic,As Suwayda'
SY_TA,Asia,Western Asia,Syrian Arab Republic,Tartus
SZ,Africa,Southern Africa,Swaziland,All Regions
SZ_HH,Africa,Southern Africa,Swaziland,Hhohho
SZ_LU,Africa,Southern Africa,Swaziland,Lubombo
SZ_MA,Africa,Southern Africa,Swaziland,Manzini
TC,America,Caribbean,Turks and Caicos Islands,All Regions
TC_Turks_and_Caicos_Islands,America,Caribbean,Turks and Caicos Islands,Turks and Caicos Islands
TD,Africa,Middle Africa,Chad,All Regions
TD_GR,Africa,Middle Africa,Chad,Guera
TD_HL,Africa,Middle Africa,Chad,Hadjer Lamis
TD_KA,Africa,Middle Africa,Chad,Kanem
TD_LO,Africa,Middle Africa,Chad,Logone-Occidental
TD_ME,Africa,Middle Africa,Chad,Mayo-Kebbi-Est
TD_OD,Africa,Middle Africa,Chad,Ouaddai
TD_TI,Africa,Middle Africa,Chad,Tibesti
TF,Antarctica,Antarctica,French Southern Territories,All Regions
TG,Africa,Western Africa,Togo,All Regions
TG_K,Africa,Western Africa,Togo,Kara
TG_M,Africa,Western Africa,Togo,Maritime
TG_P,Africa,Western Africa,Togo,Plateaux
TH,Asia,South-Eastern Asia,Thailand,All Regions
TH_10,Asia,South-Eastern Asia,Thailand,Krung Thep Maha Nakhon
TH_11,Asia,South-Eastern Asia,Thailand,Samut Prakan
TH_12,Asia,South-Eastern Asia,Thailand,Nonthaburi
TH_13,Asia,South-Eastern Asia,Thailand,Pathum Thani
TH_14,Asia,South-Eastern Asia,Thailand,Phra Nakhon Si Ayutthaya
TH_15,Asia,South-Eastern Asia,Thailand,Ang Thong
TH_16,Asia,South-Eastern Asia,Thailand,Lop Buri
TH_17,Asia,South-Eastern Asia,Thailand,Sing Buri
TH_18,Asia,South-Eastern Asia,Thailand,Chai Nat
TH_19,Asia,South-Eastern Asia,Thailand,Saraburi
TH_20,Asia,South-Eastern Asia,Thailand,Chon Buri
TH_21,Asia,South-Eastern Asia,Thailand,Rayong
TH_22,Asia,South-Eastern Asia,Thailand,Chanthaburi
TH_23,Asia,South-Eastern Asia,Thailand,Trat
TH_24,Asia,South-Eastern Asia,Thailand,Chachoengsao
TH_25,Asia,South-Eastern Asia,Thailand,Prachin Buri
TH_26,Asia,South-Eastern Asia,Thailand,Nakhon Nayok
TH_27,Asia,South-Eastern Asia,Thailand,Sa Kaeo
TH_30,Asia,South-Eastern Asia,Thailand,Nakhon Ratchasima
TH_31,Asia,South-Eastern Asia,Thailand,Buri Ram
TH_32,Asia,South-Eastern Asia,Thailand,Surin
TH_33,Asia,South-Eastern Asia,Thailand,Si Sa Ket
TH_34,Asia,South-Eastern Asia,Thailand,Ubon Ratchathani
TH_35,Asia,South-Eastern Asia,Thailand,Yasothon
TH_36,Asia,South-Eastern Asia,Thailand,Chaiyaphum
TH_37,Asia,South-Eastern Asia,Thailand,Amnat Charoen
TH_39,Asia,South-Eastern Asia,Thailand,Nong Bua Lam Phu
TH_40,Asia,South-Eastern Asia,Thailand,Khon Kaen
TH_41,Asia,South-Eastern Asia,Thailand,Udon Thani
TH_42,Asia,South-Eastern Asia,Thailand,Loei
TH_43,Asia,South-Eastern Asia,Thailand,Nong Khai
TH_44,Asia,South-Eastern Asia,Thailand,Maha Sarakham
TH_45,Asia,South-Eastern Asia,Thailand,Roi Et
TH_46,Asia,South-Eastern Asia,Thailand,Kalasin
TH_47,Asia,South-Eastern Asia,Thailand,Sakon Nakhon
TH_48,Asia,South-Eastern Asia,Thailand,Nakhon Phanom
TH_49,Asia,South-Eastern Asia,Thailand,Mukdahan
TH_50,Asia,South-Eastern Asia,Thailand,Chiang Mai
TH_51,Asia,South-Eastern Asia,Thailand,Lamphun
TH_52,Asia,South-Eastern Asia,Thailand,Lampang
TH_53,Asia,South-Eastern Asia,Thailand,Uttaradit
TH_54,Asia,South-Eastern Asia,Thailand,Phrae
TH_55,Asia,South-Eastern Asia,Thailand,Nan
TH_56,Asia,South-Eastern Asia,Thailand,Phayao
TH_57,Asia,South-Eastern Asia,Thailand,Chiang Rai
TH_58,Asia,South-Eastern Asia,Thailand,Mae Hong Son
TH_60,Asia,South-Eastern Asia,Thailand,Nakhon Sawan
TH_61,Asia,South-Eastern Asia,Thailand,Uthai Thani
TH_62,Asia,South-Eastern Asia,Thailand,Kamphaeng Phet
TH_63,Asia,South-Eastern Asia,Thailand,Tak
TH_64,Asia,South-Eastern Asia,Thailand,Sukhothai
TH_65,Asia,South-Eastern Asia,Thailand,Phitsanulok
TH_66,Asia,South-Eastern Asia,Thailand,Phichit
TH_67,Asia,South-Eastern Asia,Thailand,Phetchabun
TH_70,Asia,South-Eastern Asia,Thailand,Ratchaburi
TH_71,Asia,South-Eastern Asia,Thailand,Kanchanaburi
TH_72,Asia,South-Eastern Asia,Thailand,Suphan Buri
TH_73,Asia,South-Eastern Asia,Thailand,Nakhon Pathom
TH_74,Asia,South-Eastern Asia,Thailand,Samut Sakhon
TH_75,Asia,South-Eastern Asia,Thailand,Samut Songkhram
TH_76,Asia,South-Eastern Asia,Thailand,Phetchaburi
TH_77,Asia,South-Eastern Asia,Thailand,Prachuap Khiri Khan
TH_80,Asia,South-Eastern Asia,Thailand,Nakhon Si Thammarat
TH_81,Asia,South-Eastern Asia,Thailand,Krabi
TH_82,Asia,South-Eastern Asia,Thailand,Phangnga
TH_83,Asia,South-Eastern Asia,Thailand,Phuket
TH_84,Asia,South-Eastern Asia,Thailand,Surat Thani
TH_85,Asia,South-Eastern Asia,Thailand,Ranong
TH_86,Asia,South-Eastern Asia,Thailand,Chumphon
TH_90,Asia,South-Eastern Asia,Thailand,Songkhla
TH_91,Asia,South-Eastern Asia,Thailand,Satun
TH_92,Asia,South-Eastern Asia,Thailand,Trang
TH_93,Asia,South-Eastern Asia,Thailand,Phatthalung
TH_94,Asia,South-Eastern Asia,Thailand,Pattani
TH_95,Asia,South-Eastern Asia,Thailand,Yala
TH_96,Asia,South-Eastern Asia,Thailand,Narathiwat
TJ,Asia,Central Asia,Tajikistan,All Regions
TJ_DU,Asia,Central Asia,Tajikistan,Dushanbe
TJ_GB,Asia,Central Asia,Tajikistan,Kuhistoni Badakhshon
TJ_KT,Asia,Central Asia,Tajikistan,Khatlon
TJ_SU,Asia,Central Asia,Tajikistan,Sughd
TK,Oceania,Polynesia,Tokelau,All Regions
TK_Tokelau,Oceania,Polynesia,Tokelau,Tokelau
TL,Asia,South-Eastern Asia,Timor-Leste,All Regions
TL_DI,Asia,South-Eastern Asia,Timor-Leste,Dili
TM,Asia,Central Asia,Turkmenistan,All Regions
TM_A,Asia,Central Asia,Turkmenistan,Ahal
TM_B,Asia,Central Asia,Turkmenistan,Balkan
TM_D,Asia,Central Asia,Turkmenistan,Dasoguz
TM_L,Asia,Central Asia,Turkmenistan,Lebap
TM_M,Asia,Central Asia,Turkmenistan,Mary
TN,Africa,Northern Africa,Tunisia,All Regions
TN_11,Africa,Northern Africa,Tunisia,Tunis
TN_12,Africa,Northern Africa,Tunisia,L'Ariana
TN_13,Africa,Northern Africa,Tunisia,Ben Arous
TN_14,Africa,Northern Africa,Tunisia,La Manouba
TN_21,Africa,Northern Africa,Tunisia,Nabeul
TN_22,Africa,Northern Africa,Tunisia,Zaghouan
TN_23,Africa,Northern Africa,Tunisia,Bizerte
TN_31,Africa,Northern Africa,Tunisia,Beja
TN_32,Africa,Northern Africa,Tunisia,Jendouba
TN_33,Africa,Northern Africa,Tunisia,Le Kef
TN_34,Africa,Northern Africa,Tunisia,Siliana
TN_41,Africa,Northern Africa,Tunisia,Kairouan
TN_42,Africa,Northern Africa,Tunisia,Kasserine
TN_43,Africa,Northern Africa,Tunisia,Sidi Bouzid
TN_51,Africa,Northern Africa,Tunisia,Sousse
TN_52,Africa,Northern Africa,Tunisia,Monastir
TN_53,Africa,Northern Africa,Tunisia,Mahdia
TN_61,Africa,Northern Africa,Tunisia,Sfax
TN_71,Africa,Northern Africa,Tunisia,Gafsa
TN_72,Africa,Northern Africa,Tunisia,Tozeur
TN_73,Africa,Northern Africa,Tunisia,Kebili
TN_81,Africa,Northern Africa,Tunisia,Gabes
TN_82,Africa,Northern Africa,Tunisia,Medenine
TN_83,Africa,Northern Africa,Tunisia,Tataouine
TO,Oceania,Polynesia,Tonga,All Regions
TO_04,Oceania,Polynesia,Tonga,Tongatapu
TO_05,Oceania,Polynesia,Tonga,Vava'u
TR,Asia,Western Asia,Turkey,All Regions
TR_01,Asia,Western Asia,Turkey,Adana
TR_02,Asia,Western Asia,Turkey,Adiyaman
TR_03,Asia,Western Asia,Turkey,Afyonkarahisar
TR_04,Asia,Western Asia,Turkey,Agri
TR_05,Asia,Western Asia,Turkey,Amasya
TR_06,Asia,Western Asia,Turkey,Ankara
TR_07,Asia,Western Asia,Turkey,Antalya
TR_08,Asia,Western Asia,Turkey,Artvin
TR_09,Asia,Western Asia,Turkey,Aydin
TR_10,Asia,Western Asia,Turkey,Balikesir
TR_11,Asia,Western Asia,Turkey,Bilecik
TR_12,Asia,Western Asia,Turkey,Bingol
TR_13,Asia,Western Asia,Turkey,Bitlis
TR_14,Asia,Western Asia,Turkey,Bolu
TR_15,Asia,Western Asia,Turkey,Burdur
TR_16,Asia,Western Asia,Turkey,Bursa
TR_17,Asia,Western Asia,Turkey,Canakkale
TR_18,Asia,Western Asia,Turkey,Cankiri
TR_19,Asia,Western Asia,Turkey,Corum
TR_20,Asia,Western Asia,Turkey,Denizli
TR_21,Asia,Western Asia,Turkey,Diyarbakir
TR_22,Asia,Western Asia,Turkey,Edirne
TR_23,Asia,Western Asia,Turkey,Elazig
TR_24,Asia,Western Asia,Turkey,Erzincan
TR_25,Asia,Western Asia,Turkey,Erzurum
TR_26,Asia,Western Asia,Turkey,Eskisehir
TR_27,Asia,Western Asia,Turkey,Gaziantep
TR_28,Asia,Western Asia,Turkey,Giresun
TR_29,Asia,Western Asia,Turkey,Gumushane
TR_30,Asia,Western Asia,Turkey,Hakkari
TR_31,Asia,Western Asia,Turkey,Hatay
TR_32,Asia,Western Asia,Turkey,Isparta
TR_33,Asia,Western Asia,Turkey,Mersin
TR_34,Asia,Western Asia,Turkey,Istanbul
TR_35,Asia,Western Asia,Turkey,Izmir
TR_36,Asia,Western Asia,Turkey,Kars
TR_37,Asia,Western Asia,Turkey,Kastamonu
TR_38,Asia,Western Asia,Turkey,Kayseri
TR_39,Asia,Western Asia,Turkey,Kirklareli
TR_40,Asia,Western Asia,Turkey,Kirsehir
TR_41,Asia,Western Asia,Turkey,Kocaeli
TR_42,Asia,Western Asia,Turkey,Konya
TR_43,Asia,Western Asia,Turkey,Kutahya
TR_44,Asia,Western Asia,Turkey,Malatya
TR_45,Asia,Western Asia,Turkey,Manisa
TR_46,Asia,Western Asia,Turkey,Kahramanmaras
TR_47,Asia,Western Asia,Turkey,Mardin
TR_48,Asia,Western Asia,Turkey,Mugla
TR_49,Asia,Western Asia,Turkey,Mus
TR_50,Asia,Western Asia,Turkey,Nevsehir
TR_51,Asia,Western Asia,Turkey,Nigde
TR_52,Asia,Western Asia,Turkey,Ordu
TR_53,Asia,Western Asia,Turkey,Rize
TR_54,Asia,Western Asia,Turkey,Sakarya
TR_55,Asia,Western Asia,Turkey,Samsun
TR_56,Asia,Western Asia,Turkey,Siirt
TR_57,Asia,Western Asia,Turkey,Sinop
TR_58,Asia,Western Asia,Turkey,Sivas
TR_59,Asia,Western Asia,Turkey,Tekirdag
TR_60,Asia,Western Asia,Turkey,Tokat
TR_61,Asia,Western Asia,Turkey,Trabzon
TR_62,Asia,Western Asia,Turkey,Tunceli
TR_63,Asia,Western Asia,Turkey,Sanliurfa
TR_64,Asia,Western Asia,Turkey,Usak
TR_65,Asia,Western Asia,Turkey,Van
TR_66,Asia,Western Asia,Turkey,Yozgat
TR_67,Asia,Western Asia,Turkey,Zonguldak
TR_68,Asia,Western Asia,Turkey,Aksaray
TR_69,Asia,Western Asia,Turkey,Bayburt
TR_70,Asia,Western Asia,Turkey,Karaman
TR_71,Asia,Western Asia,Turkey,Kirikkale
TR_72,Asia,Western Asia,Turkey,Batman
TR_73,Asia,Western Asia,Turkey,Sirnak
TR_74,Asia,Western Asia,Turkey,Bartin
TR_75,Asia,Western Asia,Turkey,Ardahan
TR_76,Asia,Western Asia,Turkey,Igdir
TR_77,Asia,Western Asia,Turkey,Yalova
TR_78,Asia,Western Asia,Turkey,Karabuk
TR_79,Asia,Western Asia,Turkey,Kilis
TR_80,Asia,Western Asia,Turkey,Osmaniye
TR_81,Asia,Western Asia,Turkey,Duzce
TT,America,Caribbean,Trinidad and Tobago,All Regions
TT_ARI,America,Caribbean,Trinidad and Tobago,Arima
TT_CHA,America,Caribbean,Trinidad and Tobago,Chaguanas
TT_CTT,America,Caribbean,Trinidad and Tobago,Couva-Tabaquite-Talparo
TT_DMN,America,Caribbean,Trinidad and Tobago,Diego Martin
TT_MRC,America,Caribbean,Trinidad and Tobago,Mayaro-Rio Claro
TT_PED,America,Caribbean,Trinidad and Tobago,Penal-Debe
TT_POS,America,Caribbean,Trinidad and Tobago,Port of Spain
TT_PRT,America,Caribbean,Trinidad and Tobago,Princes Town
TT_PTF,America,Caribbean,Trinidad and Tobago,Point Fortin
TT_SFO,America,Caribbean,Trinidad and Tobago,San Fernando
TT_SGE,America,Caribbean,Trinidad and Tobago,Sangre Grande
TT_SIP,America,Caribbean,Trinidad and Tobago,Siparia
TT_SJL,America,Caribbean,Trinidad and Tobago,San Juan-Laventille
TT_TOB,America,Caribbean,Trinidad and Tobago,Tobago
TT_TUP,America,Caribbean,Trinidad and Tobago,Tunapuna-Piarco
TV,Oceania,Polynesia,Tuvalu,All Regions
TV_FUN,Oceania,Polynesia,Tuvalu,Funafuti
TW,Asia,Eastern Asia,Taiwan,All Regions
TW_CHA,Asia,Eastern Asia,Taiwan,Changhua
TW_CYQ,Asia,Eastern Asia,Taiwan,Chiayi
TW_HSQ,Asia,Eastern Asia,Taiwan,Hsinchu
TW_HUA,Asia,Eastern Asia,Taiwan,Hualien
TW_ILA,Asia,Eastern Asia,Taiwan,Yilan
TW_KEE,Asia,Eastern Asia,Taiwan,Keelung
TW_KHH,Asia,Eastern Asia,Taiwan,Kaohsiung
TW_KIN,Asia,Eastern Asia,Taiwan,Kinmen
TW_LIE,Asia,Eastern Asia,Taiwan,Lienchiang
TW_MIA,Asia,Eastern Asia,Taiwan,Miaoli
TW_NAN,Asia,Eastern Asia,Taiwan,Nantou
TW_NWT,Asia,Eastern Asia,Taiwan,New Taipei
TW_PEN,Asia,Eastern Asia,Taiwan,Penghu
TW_PIF,Asia,Eastern Asia,Taiwan,Pingtung
TW_TAO,Asia,Eastern Asia,Taiwan,Taoyuan
TW_TNN,Asia,Eastern Asia,Taiwan,Tainan
TW_TPE,Asia,Eastern Asia,Taiwan,Taipei
TW_TTT,Asia,Eastern Asia,Taiwan,Taitung
TW_TXG,Asia,Eastern Asia,Taiwan,Taichung
TW_YUN,Asia,Eastern Asia,Taiwan,Yunlin
TZ,Africa,Eastern Africa,United Republic of Tanzania,All Regions
TZ_01,Africa,Eastern Africa,United Republic of Tanzania,Arusha
TZ_02,Africa,Eastern Africa,United Republic of Tanzania,Dar es Salaam
TZ_03,Africa,Eastern Africa,United Republic of Tanzania,Dodoma
TZ_04,Africa,Eastern Africa,United Republic of Tanzania,Iringa
TZ_05,Africa,Eastern Africa,United Republic of Tanzania,Kagera
TZ_07,Africa,Eastern Africa,United Republic of Tanzania,Kaskazini Unguja
TZ_08,Africa,Eastern Africa,United Republic of Tanzania,Kigoma
TZ_09,Africa,Eastern Africa,United Republic of Tanzania,Kilimanjaro
TZ_10,Africa,Eastern Africa,United Republic of Tanzania,Kusini Pemba
TZ_11,Africa,Eastern Africa,United Republic of Tanzania,Kusini Unguja
TZ_12,Africa,Eastern Africa,United Republic of Tanzania,Lindi
TZ_13,Africa,Eastern Africa,United Republic of Tanzania,Mara
TZ_14,Africa,Eastern Africa,United Republic of Tanzania,Mbeya
TZ_15,Africa,Eastern Africa,United Republic of Tanzania,Mjini Magharibi
TZ_16,Africa,Eastern Africa,United Republic of Tanzania,Morogoro
TZ_17,Africa,Eastern Africa,United Republic of Tanzania,Mtwara
TZ_18,Africa,Eastern Africa,United Republic of Tanzania,Mwanza
TZ_19,Africa,Eastern Africa,United Republic of Tanzania,Pwani
TZ_20,Africa,Eastern Africa,United Republic of Tanzania,Rukwa
TZ_21,Africa,Eastern Africa,United Republic of Tanzania,Ruvuma
TZ_22,Africa,Eastern Africa,United Republic of Tanzania,Shinyanga
TZ_23,Africa,Eastern Africa,United Republic of Tanzania,Singida
TZ_24,Africa,Eastern Africa,United Republic of Tanzania,Tabora
TZ_25,Africa,Eastern Africa,United Republic of Tanzania,Tanga
TZ_26,Africa,Eastern Africa,United Republic of Tanzania,Manyara
UA,Europe,Eastern Europe,Ukraine,All Regions
UA_05,Europe,Eastern Europe,Ukraine,Vinnytska oblast
UA_07,Europe,Eastern Europe,Ukraine,Volynska oblast
UA_09,Europe,Eastern Europe,Ukraine,Luhanska oblast
UA_12,Europe,Eastern Europe,Ukraine,Dnipropetrovska oblast
UA_14,Europe,Eastern Europe,Ukraine,Donetska oblast
UA_18,Europe,Eastern Europe,Ukraine,Zhytomyrska oblast
UA_21,Europe,Eastern Europe,Ukraine,Zakarpatska oblast
UA_23,Europe,Eastern Europe,Ukraine,Zaporizka oblast
UA_26,Europe,Eastern Europe,Ukraine,Ivano-Frankivska oblast
UA_30,Europe,Eastern Europe,Ukraine,Kyiv
UA_32,Europe,Eastern Europe,Ukraine,Kyivska oblast
UA_35,Europe,Eastern Europe,Ukraine,Kirovohradska oblast
UA_40,Europe,Eastern Europe,Ukraine,Sevastopol'
UA_43,Europe,Eastern Europe,Ukraine,Avtonomna Respublika Krym
UA_46,Europe,Eastern Europe,Ukraine,Lvivska oblast
UA_48,Europe,Eastern Europe,Ukraine,Mykolaivska oblast
UA_51,Europe,Eastern Europe,Ukraine,Odeska oblast
UA_53,Europe,Eastern Europe,Ukraine,Poltavska oblast
UA_56,Europe,Eastern Europe,Ukraine,Rivnenska oblast
UA_59,Europe,Eastern Europe,Ukraine,Sumska oblast
UA_61,Europe,Eastern Europe,Ukraine,Ternopilska oblast
UA_63,Europe,Eastern Europe,Ukraine,Kharkivska oblast
UA_65,Europe,Eastern Europe,Ukraine,Khersonska oblast
UA_68,Europe,Eastern Europe,Ukraine,Khmelnytska oblast
UA_71,Europe,Eastern Europe,Ukraine,Cherkaska oblast
UA_74,Europe,Eastern Europe,Ukraine,Chernihivska oblast
UA_77,Europe,Eastern Europe,Ukraine,Chernivetska oblast
UG,Africa,Eastern Africa,Uganda,All Regions
UG_102,Africa,Eastern Africa,Uganda,Kampala
UG_104,Africa,Eastern Africa,Uganda,Luwero
UG_105,Africa,Eastern Africa,Uganda,Masaka
UG_106,Africa,Eastern Africa,Uganda,Mpigi
UG_108,Africa,Eastern Africa,Uganda,Mukono
UG_113,Africa,Eastern Africa,Uganda,Wakiso
UG_117,Africa,Eastern Africa,Uganda,Buikwe
UG_120,Africa,Eastern Africa,Uganda,Buvuma
UG_121,Africa,Eastern Africa,Uganda,Gomba
UG_204,Africa,Eastern Africa,Uganda,Jinja
UG_209,Africa,Eastern Africa,Uganda,Mbale
UG_211,Africa,Eastern Africa,Uganda,Soroti
UG_212,Africa,Eastern Africa,Uganda,Tororo
UG_303,Africa,Eastern Africa,Uganda,Arua
UG_304,Africa,Eastern Africa,Uganda,Gulu
UG_307,Africa,Eastern Africa,Uganda,Lira
UG_309,Africa,Eastern Africa,Uganda,Moyo
UG_311,Africa,Eastern Africa,Uganda,Nakapiripirit
UG_404,Africa,Eastern Africa,Uganda,Kabale
UG_405,Africa,Eastern Africa,Uganda,Kabarole
UG_406,Africa,Eastern Africa,Uganda,Kasese
UG_410,Africa,Eastern Africa,Uganda,Mbarara
UG_416,Africa,Eastern Africa,Uganda,Buliisa
US,America,Northern America,United States,All Regions
US_AK,America,Northern America,United States,Alaska
US_AL,America,Northern America,United States,Alabama
US_AR,America,Northern America,United States,Arkansas
US_AS,America,Northern America,United States,American Samoa
US_AZ,America,Northern America,United States,Arizona
US_CA,America,Northern America,United States,California
US_CO,America,Northern America,United States,Colorado
US_CT,America,Northern America,United States,Connecticut
US_DC,America,Northern America,United States,District of Columbia
US_DE,America,Northern America,United States,Delaware
US_FL,America,Northern America,United States,Florida
US_GA,America,Northern America,United States,Georgia
US_GU,America,Northern America,United States,Guam
US_HI,America,Northern America,United States,Hawaii
US_IA,America,Northern America,United States,Iowa
US_ID,America,Northern America,United States,Idaho
US_IL,America,Northern America,United States,Illinois
US_IN,America,Northern America,United States,Indiana
US_KS,America,Northern America,United States,Kansas
US_KY,America,Northern America,United States,Kentucky
US_LA,America,Northern America,United States,Louisiana
US_MA,America,Northern America,United States,Massachusetts
US_MD,America,Northern America,United States,Maryland
US_ME,America,Northern America,United States,Maine
US_MI,America,Northern America,United States,Michigan
US_MN,America,Northern America,United States,Minnesota
US_MO,America,Northern America,United States,Missouri
US_MP,America,Northern America,United States,Northern Mariana Islands
US_MS,America,Northern America,United States,Mississippi
US_MT,America,Northern America,United States,Montana
US_NC,America,Northern America,United States,North Carolina
US_ND,America,Northern America,United States,North Dakota
US_NE,America,Northern America,United States,Nebraska
US_NH,America,Northern America,United States,New Hampshire
US_NJ,America,Northern America,United States,New Jersey
US_NM,America,Northern America,United States,New Mexico
US_NV,America,Northern America,United States,Nevada
US_NY,America,Northern America,United States,New York
US_OH,America,Northern America,United States,Ohio
US_OK,America,Northern America,United States,Oklahoma
US_OR,America,Northern America,United States,Oregon
US_PA,America,Northern America,United States,Pennsylvania
US_PR,America,Northern America,United States,Puerto Rico
US_RI,America,Northern America,United States,Rhode Island
US_SC,America,Northern America,United States,South Carolina
US_SD,America,Northern America,United States,South Dakota
US_TN,America,Northern America,United States,Tennessee
US_TX,America,Northern America,United States,Texas
US_UM,America,Northern America,United States,United States Minor Outlying Islands
US_UT,America,Northern America,United States,Utah
US_VA,America,Northern America,United States,Virginia
US_VI,America,Northern America,United States,Virgin Islands
US_VT,America,Northern America,United States,Vermont
US_WA,America,Northern America,United States,Washington
US_WI,America,Northern America,United States,Wisconsin
US_WV,America,Northern America,United States,West Virginia
US_WY,America,Northern America,United States,Wyoming
UY,America,South America,Uruguay,All Regions
UY_AR,America,South America,Uruguay,Artigas
UY_CA,America,South America,Uruguay,Canelones
UY_CL,America,South America,Uruguay,Cerro Largo
UY_CO,America,South America,Uruguay,Colonia
UY_DU,America,South America,Uruguay,Durazno
UY_FD,America,South America,Uruguay,Florida
UY_FS,America,South America,Uruguay,Flores
UY_LA,America,South America,Uruguay,Lavalleja
UY_MA,America,South America,Uruguay,Maldonado
UY_MO,America,South America,Uruguay,Montevideo
UY_PA,America,South America,Uruguay,Paysandu
UY_RN,America,South America,Uruguay,Rio Negro
UY_RO,America,South America,Uruguay,Rocha
UY_RV,America,South America,Uruguay,Rivera
UY_SA,America,South America,Uruguay,Salto
UY_SJ,America,South America,Uruguay,San Jose
UY_SO,America,South America,Uruguay,Soriano
UY_TA,America,South America,Uruguay,Tacuarembo
UY_TT,America,South America,Uruguay,Treinta y Tres
UZ,Asia,Central Asia,Uzbekistan,All Regions
UZ_AN,Asia,Central Asia,Uzbekistan,Andijon
UZ_BU,Asia,Central Asia,Uzbekistan,Buxoro
UZ_FA,Asia,Central Asia,Uzbekistan,Farg'ona
UZ_JI,Asia,Central Asia,Uzbekistan,Jizzax
UZ_NG,Asia,Central Asia,Uzbekistan,Namangan
UZ_NW,Asia,Central Asia,Uzbekistan,Navoiy
UZ_QA,Asia,Central Asia,Uzbekistan,Qashqadaryo
UZ_SA,Asia,Central Asia,Uzbekistan,Samarqand
UZ_SI,Asia,Central Asia,Uzbekistan,Sirdaryo
UZ_SU,Asia,Central Asia,Uzbekistan,Surxondaryo
UZ_TK,Asia,Central Asia,Uzbekistan,Toshkent
UZ_XO,Asia,Central Asia,Uzbekistan,Xorazm
VA,Europe,Southern Europe,Holy See (Vatican City State),All Regions
VA_Vatican_City,Europe,Southern Europe,Holy See (Vatican City State),Vatican City
VC,America,Caribbean,Saint Vincent and the Grenadines,All Regions
VC_01,America,Caribbean,Saint Vincent and the Grenadines,Charlotte
VC_04,America,Caribbean,Saint Vincent and the Grenadines,Saint George
VE,America,South America,Venezuela,All Regions
VE_A,America,South America,Venezuela,Distrito Capital
VE_B,America,South America,Venezuela,Anzoategui
VE_C,America,South America,Venezuela,Apure
VE_D,America,South America,Venezuela,Aragua
VE_E,America,South America,Venezuela,Barinas
VE_F,America,South America,Venezuela,Bolivar
VE_G,America,South America,Venezuela,Carabobo
VE_H,America,South America,Venezuela,Cojedes
VE_I,America,South America,Venezuela,Falcon
VE_J,America,South America,Venezuela,Guarico
VE_K,America,South America,Venezuela,Lara
VE_L,America,South America,Venezuela,Merida
VE_M,America,South America,Venezuela,Miranda
VE_N,America,South America,Venezuela,Monagas
VE_O,America,South America,Venezuela,Nueva Esparta
VE_P,America,South America,Venezuela,Portuguesa
VE_R,America,South America,Venezuela,Sucre
VE_S,America,South America,Venezuela,Tachira
VE_T,America,South America,Venezuela,Trujillo
VE_U,America,South America,Venezuela,Yaracuy
VE_V,America,South America,Venezuela,Zulia
VE_X,America,South America,Venezuela,Vargas
VE_Y,America,South America,Venezuela,Delta Amacuro
VE_Z,America,South America,Venezuela,Amazonas
VG,America,Caribbean,British Virgin Islands,All Regions
VG_British_Virgin_Islands,America,Caribbean,British Virgin Islands,British Virgin Islands
VI,America,Caribbean,US Virgin Islands,All Regions
VI_Virgin_Islands,America,Caribbean,US Virgin Islands,Virgin Islands
VN,Asia,South-Eastern Asia,Viet Nam,All Regions
VN_01,Asia,South-Eastern Asia,Viet Nam,Lai Chau
VN_02,Asia,South-Eastern Asia,Viet Nam,Lao Cai
VN_03,Asia,South-Eastern Asia,Viet Nam,Ha Giang
VN_04,Asia,South-Eastern Asia,Viet Nam,Cao Bang
VN_05,Asia,South-Eastern Asia,Viet Nam,Son La
VN_06,Asia,South-Eastern Asia,Viet Nam,Yen Bai
VN_07,Asia,South-Eastern Asia,Viet Nam,Tuyen Quang
VN_09,Asia,South-Eastern Asia,Viet Nam,Lang Son
VN_13,Asia,South-Eastern Asia,Viet Nam,Quang Ninh
VN_14,Asia,South-Eastern Asia,Viet Nam,Hoa Binh
VN_18,Asia,South-Eastern Asia,Viet Nam,Ninh Binh
VN_20,Asia,South-Eastern Asia,Viet Nam,Thai Binh
VN_21,Asia,South-Eastern Asia,Viet Nam,Thanh Hoa
VN_22,Asia,South-Eastern Asia,Viet Nam,Nghe An
VN_23,Asia,South-Eastern Asia,Viet Nam,Ha Tinh
VN_24,Asia,South-Eastern Asia,Viet Nam,Quang Binh
VN_25,Asia,South-Eastern Asia,Viet Nam,Quang Tri
VN_26,Asia,South-Eastern Asia,Viet Nam,Thua Thien-Hue
VN_27,Asia,South-Eastern Asia,Viet Nam,Quang Nam
VN_29,Asia,South-Eastern Asia,Viet Nam,Quang Ngai
VN_30,Asia,South-Eastern Asia,Viet Nam,Gia Lai
VN_31,Asia,South-Eastern Asia,Viet Nam,Binh Dinh
VN_32,Asia,South-Eastern Asia,Viet Nam,Phu Yen
VN_33,Asia,South-Eastern Asia,Viet Nam,Dak Lak
VN_34,Asia,South-Eastern Asia,Viet Nam,Khanh Hoa
VN_35,Asia,South-Eastern Asia,Viet Nam,Lam Dong
VN_36,Asia,South-Eastern Asia,Viet Nam,Ninh Thuan
VN_37,Asia,South-Eastern Asia,Viet Nam,Tay Ninh
VN_39,Asia,South-Eastern Asia,Viet Nam,Dong Nai
VN_40,Asia,South-Eastern Asia,Viet Nam,Binh Thuan
VN_41,Asia,South-Eastern Asia,Viet Nam,Long An
VN_44,Asia,South-Eastern Asia,Viet Nam,An Giang
VN_45,Asia,South-Eastern Asia,Viet Nam,Dong Thap
VN_46,Asia,South-Eastern Asia,Viet Nam,Tien Giang
VN_47,Asia,South-Eastern Asia,Viet Nam,Kien Giang
VN_49,Asia,South-Eastern Asia,Viet Nam,Vinh Long
VN_50,Asia,South-Eastern Asia,Viet Nam,Ben Tre
VN_51,Asia,South-Eastern Asia,Viet Nam,Tra Vinh
VN_52,Asia,South-Eastern Asia,Viet Nam,Soc Trang
VN_53,Asia,South-Eastern Asia,Viet Nam,Bac Kan
VN_54,Asia,South-Eastern Asia,Viet Nam,Bac Giang
VN_55,Asia,South-Eastern Asia,Viet Nam,Bac Lieu
VN_56,Asia,South-Eastern Asia,Viet Nam,Bac Ninh
VN_57,Asia,South-Eastern Asia,Viet Nam,Binh Duong
VN_58,Asia,South-Eastern Asia,Viet Nam,Binh Phuoc
VN_59,Asia,South-Eastern Asia,Viet Nam,Ca Mau
VN_61,Asia,South-Eastern Asia,Viet Nam,Hai Duong
VN_63,Asia,South-Eastern Asia,Viet Nam,Ha Nam
VN_66,Asia,South-Eastern Asia,Viet Nam,Hung Yen
VN_67,Asia,South-Eastern Asia,Viet Nam,Nam Dinh
VN_68,Asia,South-Eastern Asia,Viet Nam,Phu Tho
VN_69,Asia,South-Eastern Asia,Viet Nam,Thai Nguyen
VN_70,Asia,South-Eastern Asia,Viet Nam,Vinh Phuc
VN_71,Asia,South-Eastern Asia,Viet Nam,Dien Bien
VN_CT,Asia,South-Eastern Asia,Viet Nam,Can Tho
VN_DN,Asia,South-Eastern Asia,Viet Nam,Da Nang
VN_HN,Asia,South-Eastern Asia,Viet Nam,Ha Noi
VN_HP,Asia,South-Eastern Asia,Viet Nam,Hai Phong
VN_SG,Asia,South-Eastern Asia,Viet Nam,Ho Chi Minh
VU,Oceania,Melanesia,Vanuatu,All Regions
VU_SAM,Oceania,Melanesia,Vanuatu,Sanma
VU_SEE,Oceania,Melanesia,Vanuatu,Shefa
VU_TAE,Oceania,Melanesia,Vanuatu,Tafea
WF,Oceania,Polynesia,Wallis and Futuna Islands,All Regions
WF_UV,Oceania,Polynesia,Wallis and Futuna Islands,Uvea
WS,Oceania,Polynesia,Samoa,All Regions
WS_TU,Oceania,Polynesia,Samoa,Tuamasaga
YE,Asia,Western Asia,Yemen,All Regions
YE_AD,Asia,Western Asia,Yemen,'Adan
YE_DH,Asia,Western Asia,Yemen,Dhamar
YE_HD,Asia,Western Asia,Yemen,Hadramawt
YE_HU,Asia,Western Asia,Yemen,Al Hudaydah
YE_SA,Asia,Western Asia,Yemen,Amanat al 'Asimah
YE_SH,Asia,Western Asia,Yemen,Shabwah
YT,Africa,Eastern Africa,Mayotte,All Regions
YT_Acoua,Africa,Eastern Africa,Mayotte,Acoua
YT_Bandraboua,Africa,Eastern Africa,Mayotte,Bandraboua
YT_Bandrele,Africa,Eastern Africa,Mayotte,Bandrele
YT_Chiconi,Africa,Eastern Africa,Mayotte,Chiconi
YT_Koungou,Africa,Eastern Africa,Mayotte,Koungou
YT_Mamoudzou,Africa,Eastern Africa,Mayotte,Mamoudzou
YT_Mtsamboro,Africa,Eastern Africa,Mayotte,Mtsamboro
YT_Ouangani,Africa,Eastern Africa,Mayotte,Ouangani
YT_Sada,Africa,Eastern Africa,Mayotte,Sada
YT_Tsingoni,Africa,Eastern Africa,Mayotte,Tsingoni
ZA,Africa,Southern Africa,South Africa,All Regions
ZA_EC,Africa,Southern Africa,South Africa,Eastern Cape
ZA_FS,Africa,Southern Africa,South Africa,Free State
ZA_GT,Africa,Southern Africa,South Africa,Gauteng
ZA_LP,Africa,Southern Africa,South Africa,Limpopo
ZA_MP,Africa,Southern Africa,South Africa,Mpumalanga
ZA_NC,Africa,Southern Africa,South Africa,Northern Cape
ZA_NL,Africa,Southern Africa,South Africa,Kwazulu-Natal
ZA_NW,Africa,Southern Africa,South Africa,North-West
ZA_WC,Africa,Southern Africa,South Africa,Western Cape
ZM,Africa,Eastern Africa,Zambia,All Regions
ZM_01,Africa,Eastern Africa,Zambia,Western
ZM_02,Africa,Eastern Africa,Zambia,Central
ZM_03,Africa,Eastern Africa,Zambia,Eastern
ZM_04,Africa,Eastern Africa,Zambia,Luapula
ZM_05,Africa,Eastern Africa,Zambia,Northern
ZM_06,Africa,Eastern Africa,Zambia,North-Western
ZM_07,Africa,Eastern Africa,Zambia,Southern
ZM_08,Africa,Eastern Africa,Zambia,Copperbelt
ZM_09,Africa,Eastern Africa,Zambia,Lusaka
ZW,Africa,Eastern Africa,Zimbabwe,All Regions
ZW_BU,Africa,Eastern Africa,Zimbabwe,Bulawayo
ZW_HA,Africa,Eastern Africa,Zimbabwe,Harare
ZW_MA,Africa,Eastern Africa,Zimbabwe,Manicaland
ZW_MC,Africa,Eastern Africa,Zimbabwe,Mashonaland Central
ZW_ME,Africa,Eastern Africa,Zimbabwe,Mashonaland East
ZW_MI,Africa,Eastern Africa,Zimbabwe,Midlands
ZW_MN,Africa,Eastern Africa,Zimbabwe,Matabeleland North
ZW_MS,Africa,Eastern Africa,Zimbabwe,Matabeleland South
ZW_MV,Africa,Eastern Africa,Zimbabwe,Masvingo
ZW_MW,Africa,Eastern Africa,Zimbabwe,Mashonaland West
;;;;
run;