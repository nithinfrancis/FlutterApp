import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

const String DATE_TIME_FORMAT_LONG = "dd-MMM-yyyy, hh:mm a";
const String DATE_TIME_FORMAT_SHORT = "dd-MM-yyyy, hh:mm a";
const String DATE_FORMAT_LONG = "dd-MMM-yyyy";
const String DAY_DATE_FORMAT_SHORT = "EEE MMM dd, yyyy";
const String TIME_FORMAT_LONG = "hh:mm:ss a";
const String TIME_FORMAT_SHORT = "hh:mm a";
const String DATE_FORMAT_SHORT = "dd-MM-yyyy";
const String DATE_TIME_FORMAT_SHORT_YEAR = "yyyy-MM-dd, HH:mm";
const String DATE_FORMAT_MONTH_YEAR = "MMM-yyyy";
const String DATE_TIME_PICKER_FORMAT_LONG = "hh:mm a, dd-MM-yyyy";
const String DATE_TIME_PICKER_DISPLAY_FORMAT = "MMM dd, yyyy hh:mm a";
const String DATE_TIME_FORMAT_HISTORY_HEADER = "EEEE, MMMM dd yyyy";
const String SMILE_VALIDATION =
    "(?:[\u2700-\u27bf]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff]|[\u0023-\u0039]\ufe0f?\u20e3|\u3299|\u3297|\u303d|\u3030|\u24c2|\ud83c[\udd70-\udd71]|\ud83c[\udd7e-\udd7f]|\ud83c\udd8e|\ud83c[\udd91-\udd9a]|\ud83c[\udde6-\uddff]|[\ud83c\ude01-\ude02]|\ud83c\ude1a|\ud83c\ude2f|[\ud83c\ude32-\ude3a]|[\ud83c\ude50-\ude51]|\u203c|\u2049|[\u25aa-\u25ab]|\u25b6|\u25c0|[\u25fb-\u25fe]|\u00a9|\u00ae|\u2122|\u2139|\ud83c\udc04|[\u2600-\u26FF]|\u2b05|\u2b06|\u2b07|\u2b1b|\u2b1c|\u2b50|\u2b55|\u231a|\u231b|\u2328|\u23cf|[\u23e9-\u23f3]|[\u23f8-\u23fa]|\ud83c\udccf|\u2934|\u2935|[\u2190-\u21ff])";

class TimeZone {
  var _timeZones = new Map<String, String>();

  TimeZone() {
    _timeZones['Pacific/Midway'] = '(GMT-11:00) Midway Island, Samoa';
    _timeZones['America/Adak'] = '(GMT-10:00) Hawaii-Aleutian';
    _timeZones['Etc/GMT+10'] = '(GMT-10:00) Hawaii';
    _timeZones['Pacific/Marquesas'] = '(GMT-09:30) Marquesas Islands';
    _timeZones['Pacific/Gambier'] = '(GMT-09:00) Gambier Islands';
    _timeZones['America/Anchorage'] = '(GMT-09:00) Alaska';
    _timeZones['America/Ensenada'] = '(GMT-08:00) Tijuana, Baja California';
    _timeZones['Etc/GMT+8'] = '(GMT-08:00) Pitcairn Islands';
    _timeZones['America/Los_Angeles'] = '(GMT-08:00) Pacific Time (US & Canada)';
    _timeZones['America/Denver'] = '(GMT-07:00) Mountain Time (US & Canada)';
    _timeZones['America/Chihuahua'] = '(GMT-07:00) Chihuahua, La Paz, Mazatlan';
    _timeZones['America/Dawson_Creek'] = '(GMT-07:00) Arizona';
    _timeZones['America/Belize'] = '(GMT-06:00) Saskatchewan, Central America';
    _timeZones['America/Cancun'] = '(GMT-06:00) Guadalajara, Mexico City, Monterrey';
    _timeZones['Chile/EasterIsland'] = '(GMT-06:00) Easter Island';
    _timeZones['America/Chicago'] = '(GMT-06:00) Central Time (US & Canada)';
    _timeZones['America/New_York'] = '(GMT-05:00) Eastern Time (US & Canada)';
    _timeZones['America/Havana'] = '(GMT-05:00) Cuba';
    _timeZones['America/Bogota'] = '(GMT-05:00) Bogota, Lima, Quito, Rio Branco';
    _timeZones['America/Caracas'] = '(GMT-04:30) Caracas';
    _timeZones['America/Santiago'] = '(GMT-04:00) Santiago';
    _timeZones['America/La_Paz'] = '(GMT-04:00) La Paz';
    _timeZones['Atlantic/Stanley'] = '(GMT-04:00) Faukland Islands';
    _timeZones['America/Campo_Grande'] = '(GMT-04:00) Brazil';
    _timeZones['America/Goose_Bay'] = '(GMT-04:00) Atlantic Time (Goose Bay)';
    _timeZones['America/Glace_Bay'] = '(GMT-04:00) Atlantic Time (Canada)';
    _timeZones['America/St_Johns'] = '(GMT-03:30) Newfoundland';
    _timeZones['America/Araguaina'] = '(GMT-03:00) UTC-3';
    _timeZones['America/Montevideo'] = '(GMT-03:00) Montevideo';
    _timeZones['America/Miquelon'] = '(GMT-03:00) Miquelon, St. Pierre';
    _timeZones['America/Godthab'] = '(GMT-03:00) Greenland';
    _timeZones['America/Argentina/Buenos_Aires'] = '(GMT-03:00) Buenos Aires';
    _timeZones['America/Sao_Paulo'] = '(GMT-03:00) Brasilia';
    _timeZones['America/Noronha'] = '(GMT-02:00) Mid-Atlantic';
    _timeZones['Atlantic/Cape_Verde'] = '(GMT-01:00) Cape Verde Is.';
    _timeZones['Atlantic/Azores'] = '(GMT-01:00) Azores';
    _timeZones['Europe/Belfast'] = '(GMT) Greenwich Mean Time : Belfast';
    _timeZones['Europe/Dublin'] = '(GMT) Greenwich Mean Time : Dublin';
    _timeZones['Europe/Lisbon'] = '(GMT) Greenwich Mean Time : Lisbon';
    _timeZones['Europe/London'] = '(GMT) Greenwich Mean Time : London';
    _timeZones['Africa/Abidjan'] = '(GMT) Monrovia, Reykjavik';
    _timeZones['Europe/Amsterdam'] = '(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna';
    _timeZones['Europe/Belgrade'] = '(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague';
    _timeZones['Europe/Brussels'] = '(GMT+01:00) Brussels, Copenhagen, Madrid, Paris';
    _timeZones['Africa/Algiers'] = '(GMT+01:00) West Central Africa';
    _timeZones['Africa/Windhoek'] = '(GMT+01:00) Windhoek';
    _timeZones['Asia/Beirut'] = '(GMT+02:00) Beirut';
    _timeZones['Africa/Cairo'] = '(GMT+02:00) Cairo';
    _timeZones['Asia/Gaza'] = '(GMT+02:00) Gaza';
    _timeZones['Africa/Blantyre'] = '(GMT+02:00) Harare, Pretoria';
    _timeZones['Asia/Jerusalem'] = '(GMT+02:00) Jerusalem';
    _timeZones['Europe/Minsk'] = '(GMT+02:00) Minsk';
    _timeZones['Asia/Damascus'] = '(GMT+02:00) Syria';
    _timeZones['Europe/Moscow'] = '(GMT+03:00) Moscow, St. Petersburg, Volgograd';
    _timeZones['Africa/Addis_Ababa'] = '(GMT+03:00) Nairobi';
    _timeZones['Asia/Tehran'] = '(GMT+03:30) Tehran';
    _timeZones['Asia/Dubai'] = '(GMT+04:00) Abu Dhabi, Muscat';
    _timeZones['Asia/Yerevan'] = '(GMT+04:00) Yerevan';
    _timeZones['Asia/Kabul'] = '(GMT+04:30) Kabul';
    _timeZones['Asia/Yekaterinburg'] = '(GMT+05:00) Ekaterinburg';
    _timeZones['Asia/Tashkent'] = '(GMT+05:00) Tashkent';
    _timeZones['Asia/Kolkata'] = '(GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi';
    _timeZones['Asia/Katmandu'] = '(GMT+05:45) Kathmandu';
    _timeZones['Asia/Dhaka'] = '(GMT+06:00) Astana, Dhaka';
    _timeZones['Asia/Novosibirsk'] = '(GMT+06:00) Novosibirsk';
    _timeZones['Asia/Rangoon'] = '(GMT+06:30) Yangon (Rangoon)';
    _timeZones['Asia/Bangkok'] = '(GMT+07:00) Bangkok, Hanoi, Jakarta';
    _timeZones['Asia/Krasnoyarsk'] = '(GMT+07:00) Krasnoyarsk';
    _timeZones['Asia/Hong_Kong'] = '(GMT+08:00) Beijing, Chongqing, Hong Kong, Urumqi';
    _timeZones['Asia/Irkutsk'] = '(GMT+08:00) Irkutsk, Ulaan Bataar';
    _timeZones['Australia/Perth'] = '(GMT+08:00) Perth';
    _timeZones['Australia/Eucla'] = '(GMT+08:45) Eucla';
    _timeZones['Asia/Tokyo'] = '(GMT+09:00) Osaka, Sapporo, Tokyo';
    _timeZones['Asia/Seoul'] = '(GMT+09:00) Seoul';
    _timeZones['Asia/Yakutsk'] = '(GMT+09:00) Yakutsk';
    _timeZones['Australia/Adelaide'] = '(GMT+09:30) Adelaide';
    _timeZones['Australia/Darwin'] = '(GMT+09:30) Darwin';
    _timeZones['Australia/Brisbane'] = '(GMT+10:00) Brisbane';
    _timeZones['Australia/Hobart'] = '(GMT+10:00) Hobart';
    _timeZones['Asia/Vladivostok'] = '(GMT+10:00) Vladivostok';
    _timeZones['Australia/Lord_Howe'] = '(GMT+10:30) Lord Howe Island';
    _timeZones['Etc/GMT-11'] = '(GMT+11:00) Solomon Is., New Caledonia';
    _timeZones['Asia/Magadan'] = '(GMT+11:00) Magadan';
    _timeZones['Pacific/Norfolk'] = '(GMT+11:30) Norfolk Island';
    _timeZones['Asia/Anadyr'] = '(GMT+12:00) Anadyr, Kamchatka';
    _timeZones['Asia/Anadyr'] = '(GMT+12:00) Anadyr, Kamchatka';
    _timeZones['Pacific/Auckland'] = '(GMT+12:00) Auckland, Wellington';
    _timeZones['Etc/GMT-12'] = '(GMT+12:00) Fiji, Kamchatka, Marshall Is.';
    _timeZones['Pacific/Chatham'] = '(GMT+12:45) Chatham Islands';
    _timeZones['Pacific/Tongatapu'] = '(GMT+13:00) Nuku\'alofa';
    _timeZones['Pacific/Kiritimati'] = '(GMT+14:00) Kiritimati';
  }

  Map get timeZones => _timeZones;
}

class Language {
  var _languages = new Map<String, String>();

  Language({String role}) {
    _languages['en'] = 'English';
    _languages['ja'] = '日本語';
    _languages['ar'] = 'العَرَبِيَّة';
    if (null == role || role == "PARENT") {
      _languages['ml'] = 'മലയാളം';
    }
  }

  Map get languages => _languages;
}

class Countries {
  var _countries = new Map<String, String>();

  Countries() {
    _countries['AF(93)'] = 'AFGHANISTAN';
    _countries['AL(335)'] = 'ALBANIA';
    _countries['DZ(213)'] = 'ALGERIA';
    _countries['AS(1-684)'] = 'AMERICAN_SAMOA';
    _countries['AD(376)'] = 'ANDORRA';
    _countries['AO(244)'] = 'ANGOLA';
    _countries['AI(1-264)'] = 'ANGUILLA';
    _countries['AQ(672)'] = 'ANTARCTICA';
    _countries['AG(1-268)'] = 'ANTIGUA_AND_BARBUDA';
    _countries['AR(54)'] = 'ARGENTINA';
    _countries['AM(374)'] = 'ARMENIA';
    _countries['AW(297)'] = 'ARUBA';
    _countries['AU(61)'] = 'AUSTRALIA';
    _countries['AT(43)'] = 'AUSTRIA';
    _countries['AZ(994)'] = 'AZERBAIJAN';
    _countries['BS(1-242)'] = 'BAHAMAS';
    _countries['BH(973)'] = 'BAHRAIN';
    _countries['BD(880)'] = 'BANGLADESH';
    _countries['BB(1-246)'] = 'BARBADOS';
    _countries['BY(375)'] = 'BELARUS';
    _countries['BE(32)'] = 'BELGIUM';
    _countries['BZ(501)'] = 'BELIZE';
    _countries['BJ(229)'] = 'BENIN';
    _countries['BM(1-441)'] = 'BERMUDA';
    _countries['BT(975)'] = 'BHUTAN';
    _countries['BO(591)'] = 'BOLIVIA';
    _countries['BA(387)'] = 'BOSNIA_AND_HERZEGOVINA';
    _countries['BW(267)'] = 'BOTSWANA';
    _countries['BR(55)'] = 'BRAZIL';
    _countries['IO(246)'] = 'BRITISH_INDIAN_OCEAN_TERRITORY';
    _countries['VG(1-284)'] = 'BRITISH_VIRGIN_ISLANDS';
    _countries['BN(673)'] = 'BRUNEI';
    _countries['BG(359)'] = 'BULGARIA';
    _countries['BF(226)'] = 'BURKINA_FASO';
    _countries['BI(257)'] = 'BURUNDI';
    _countries['KH(855)'] = 'CAMBODIA';
    _countries['CM(237)'] = 'CAMEROON';
    _countries['CA(1)'] = 'CANADA';
    _countries['CV(238)'] = 'CAPE_VERDE';
    _countries['KY(1-345)'] = 'CAYMAN_ISLANDS';
    _countries['CF(236)'] = 'CENTRAL_AFRICAN_REPUBLIC';
    _countries['TD(235)'] = 'CHAD';
    _countries['CL(56)'] = 'CHILE';
    _countries['CN(86)'] = 'CHINA';
    _countries['CX(61)'] = 'CHRISTMAS_ISLAND';
    _countries['CC(61)'] = 'COCOS_ISLANDS';
    _countries['CO(57)'] = 'COLOMBIA';
    _countries['KM(269)'] = 'COMOROS';
    _countries['CK(682)'] = 'COOK_ISLANDS';
    _countries['CR(506)'] = 'COSTA_RICA';
    _countries['HR(385)'] = 'CROATIA';
    _countries['CU(53)'] = 'CUBA';
    _countries['CW(599)'] = 'CURACAO';
    _countries['CY(357)'] = 'CYPRUS';
    _countries['CZ(420)'] = 'CZECH_REPUBLIC';
    _countries['CD(243)'] = 'DEMOCRATIC_REPUBLIC_OF_THE_CONGO';
    _countries['DK(45)'] = 'DENMARK';
    _countries['DJ(253)'] = 'DJIBOUTI';
    _countries['DM(1-767)'] = 'DOMINICA';
    _countries['1-829'] = 'DOMINICAN_REPUBLIC';
    _countries['TL(670)'] = 'EAST_TIMOR';
    _countries['EC(593)'] = 'ECUADOR';
    _countries['EG(20)'] = 'EGYPT';
    _countries['SV(503)'] = 'EL_SALVADOR';
    _countries['GQ(240)'] = 'EQUATORIAL_GUINEA';
    _countries['ER(291)'] = 'ERITREA';
    _countries['EE(372)'] = 'ESTONIA';
    _countries['ET(251)'] = 'ETHIOPIA';
    _countries['FK(500)'] = 'FALKLAND_ISLANDS';
    _countries['FO(298)'] = 'FAROE_ISLANDS';
    _countries['FJ(679)'] = 'FIJI';
    _countries['FI(358)'] = 'FINLAND';
    _countries['FR(33)'] = 'FRANCE';
    _countries['PF(689)'] = 'FRENCH_POLYNESIA';
    _countries['GA(241)'] = 'GABON';
    _countries['GM(220)'] = 'GAMBIA';
    _countries['GE(995)'] = 'GEORGIA';
    _countries['DE(49)'] = 'GERMANY';
    _countries['GH(233)'] = 'GHANA';
    _countries['GI(350)'] = 'GIBRALTAR';
    _countries['GR(30)'] = 'GREECE';
    _countries['GL(299)'] = 'GREENLAND';
    _countries['GD(1-473)'] = 'GRENADA';
    _countries['GU(1-671)'] = 'GUAM';
    _countries['GT(502)'] = 'GUATEMALA';
    _countries['GG(44-1481)'] = 'GUERNSEY';
    _countries['GN(224)'] = 'GUINEA';
    _countries['GY(592)'] = 'GUYANA';
    _countries['HT(509)'] = 'HAITI';
    _countries['HN(504)'] = 'HONDURAS';
    _countries['HK(852)'] = 'HONG_KONG';
    _countries['HU(36)'] = 'HUNGARY';
    _countries['IS(354)'] = 'ICELAND';
    _countries['IN(91)'] = 'INDIA';
    _countries['ID(62)'] = 'INDONESIA';
    _countries['IR(98)'] = 'IRAN';
    _countries['IQ(964)'] = 'IRAQ';
    _countries['IE(353)'] = 'IRELAND';
    _countries['IM(44-1624)'] = 'ISLE_OF_MAN';
    _countries['IL(972)'] = 'ISRAEL';
    _countries['IT(39)'] = 'ITALY';
    _countries['CI(225)'] = 'IVORY_COAST';
    _countries['JM(1-876)'] = 'JAMAICA';
    _countries['JP(81)'] = 'JAPAN';
    _countries['JE(44-1534)'] = 'JERSEY';
    _countries['JO(962)'] = 'JORDAN';
    _countries['KZ(7)'] = 'KAZAKHSTAN';
    _countries['KE(254)'] = 'KENYA';
    _countries['KI(686)'] = 'KIRIBATI';
    _countries['XK(383)'] = 'KOSOVO';
    _countries['KW(965)'] = 'KUWAIT';
    _countries['KG(996)'] = 'KYRGYZSTAN';
    _countries['LA(856)'] = 'LAOS';
    _countries['LV(371)'] = 'LATVIA';
    _countries['LB(961)'] = 'LEBANON';
    _countries['LS(266)'] = 'LESOTHO';
    _countries['LR(231)'] = 'LIBERIA';
    _countries['LY(218)'] = 'LIBYA';
    _countries['LI(423)'] = 'LIECHTENSTEIN';
    _countries['LT(370)'] = 'LIECHTENSTEIN';
    _countries['LU(352)'] = 'LUXEMBOURG';
    _countries['MO(853)'] = 'MACAU';
    _countries['MK(389)'] = 'MACEDONIA';
    _countries['MG(261)'] = 'MADAGASCAR';
    _countries['MW(265)'] = 'MALAWI';
    _countries['MY(60)'] = 'MALAYSIA';
    _countries['MV(960)'] = 'MALDIVES';
    _countries['ML(223)'] = 'MALI';
    _countries['MT(356)'] = 'MALTA';
    _countries['MH(692)'] = 'MARSHALL_ISLANDS';
    _countries['MR(222)'] = 'MAURITANIA';
    _countries['MU(230)'] = 'MAURITIUS';
    _countries['YT(262)'] = 'MAYOTTE';
    _countries['MX(52)'] = 'MEXICO';
    _countries['FM(691)'] = 'MICRONESIA';
    _countries['MD(373)'] = 'MOLDOVA';
    _countries['MC(377)'] = 'MONACO';
    _countries['MN(976)'] = 'MONGOLIA';
    _countries['ME(382)'] = 'MONTENEGRO';
    _countries['MS(1-664)'] = 'MONTSERRAT';
    _countries['MA(212)'] = 'MOROCCO';
    _countries['MZ(258)'] = 'MOZAMBIQUE';
    _countries['MM(95)'] = 'MYANMAR';
    _countries['NA(264)'] = 'NAMIBIA';
    _countries['NR(674)'] = 'NAURU';
    _countries['NP(977)'] = 'NEPAL';
    _countries['NL(31)'] = 'NETHERLANDS';
    _countries['AN(599)'] = 'NETHERLANDS_ANTILLES';
    _countries['NC(687)'] = 'NEW_CALEDONIA';
    _countries['NZ(64)'] = 'NEW_ZEALAND';
    _countries['NI(505)'] = 'NICARAGUA';
    _countries['NE(227)'] = 'NIGER';
    _countries['NG(234)'] = 'NIGERIA';
    _countries['NU(683)'] = 'NIUE';
    _countries['KP(850)'] = 'NORTH_KOREA';
    _countries['MP(1-670)'] = 'NORTHERN_MARIANA_ISLANDS';
    _countries['NO(47)'] = 'NORWAY';
    _countries['OM(968)'] = 'OMAN';
    _countries['PK(92)'] = 'PAKISTAN';
    _countries['PW(680)'] = 'PALAU';
    _countries['PS(970)'] = 'PALESTINE';
    _countries['PA(507)'] = 'PANAMA';
    _countries['PG(675)'] = 'PAPUA_NEW_GUINEA';
    _countries['PY(595)'] = 'PARAGUAY';
    _countries['PE(51)'] = 'PERU';
    _countries['PH(63)'] = 'PHILIPPINES';
    _countries['PN(64)'] = 'PITCAIRN';
    _countries['PL(48)'] = 'POLAND';
    _countries['PT(351)'] = 'PORTUGAL';
    _countries['1-787(1-939)'] = 'PUERTO_RICO';
    _countries['QA(974)'] = 'QATAR';
    _countries['CG(242)'] = 'REPUBLIC_OF_THE_CONGO';
    _countries['RE(262)'] = 'REUNION';
    _countries['RO(40)'] = 'ROMANIA';
    _countries['RU(7)'] = 'RUSSIA';
    _countries['RW(250)'] = 'RWANDA';
    _countries['BL(590)'] = 'SAINT_BARTHELEMY';
    _countries['SH(290)'] = 'SAINT_HELENA';
    _countries['KN(1-869)'] = 'SAINT_KITTS_AND_NEVIS';
    _countries['LC(1-758)'] = 'SAINT_LUCIA';
    _countries['MF(590)'] = 'SAINT_MARTIN';
    _countries['PM(508)'] = 'SAINT_PIERRE_AND_MIQUELON';
    _countries['VC(1-784)'] = 'SAINT_VINCENT_AND_THE_GRENADINES';
    _countries['WS(685)'] = 'SAMOA';
    _countries['SM(378)'] = 'SAN_MARINO';
    _countries['ST(239)'] = 'SAO_TOME_AND_PRINCIPE';
    _countries['SA(966)'] = 'SAUDI_ARABIA';
    _countries['SN(221)'] = 'SENEGAL';
    _countries['RS(381)'] = 'SERBIA';
    _countries['SC(248)'] = 'SEYCHELLES';
    _countries['SL(232)'] = 'SIERRA_LEONE';
    _countries['SG(65)'] = 'SINGAPORE';
    _countries['SX(1-721)'] = 'SINT_MAARTEN';
    _countries['SK(421)'] = 'SLOVAKIA';
    _countries['SI(386)'] = 'SLOVENIA';
    _countries['SB(677)'] = 'SOLOMON_ISLANDS';
    _countries['SO(252)'] = 'SOMALIA';
    _countries['ZA(27)'] = 'SOUTH_AFRICA';
    _countries['KR(82)'] = 'SOUTH_KOREA';
    _countries['SS(211)'] = 'SOUTH_SUDAN';
    _countries['ES(34)'] = 'SPAIN';
    _countries['LK(94)'] = 'SRI_LANKA';
    _countries['SD(249)'] = 'SUDAN';
    _countries['SR(597)'] = 'SURINAME';
    _countries['SJ(47)'] = 'SVALBARD_AND_JAN_MAYEN';
    _countries['SZ(268)'] = 'SWAZILAND';
    _countries['SE(46)'] = 'SWEDEN';
    _countries['CH(41)'] = 'SWITZERLAND';
    _countries['SY(963)'] = 'SYRIA';
    _countries['TW(886)'] = 'TAIWAN';
    _countries['TJ(992)'] = 'TAJIKISTAN';
    _countries['TZ(255)'] = 'TANZANIA';
    _countries['TH(66)'] = 'THAILAND';
    _countries['TG(228)'] = 'TOGO';
    _countries['TK(690)'] = 'TOKELAU';
    _countries['TO(676)'] = 'TONGA';
    _countries['TT(1-868)'] = 'TRINIDAD_AND_TOBAGO';
    _countries['TN(216)'] = 'TUNISIA';
    _countries['TR(90)'] = 'TURKEY';
    _countries['TM(993)'] = 'TURKMENISTAN';
    _countries['TC(1-649)'] = 'TURKS_AND_CAICOS_ISLANDS';
    _countries['TV(688)'] = 'TUVALU';
    _countries['UG(256)'] = 'UGANDA';
    _countries['UA(380)'] = 'UKRAINE';
    _countries['AE(971)'] = 'UNITED_ARAB_EMIRATES';
    _countries['GB(44)'] = 'UNITED_KINGDOM';
    _countries['US(1)'] = 'UNITED_STATES';
    _countries['UY(598)'] = 'URUGUAY';
    _countries['UZ(998)'] = 'UZBEKISTAN';
    _countries['VU(678)'] = 'VANUATU';
    _countries['VA(379)'] = 'VATICAN';
    _countries['VE(58)'] = 'VENEZUELA';
    _countries['VN(84)'] = 'VIETNAM';
    _countries['WF(681)'] = 'WALLIS_AND_FUTUNA';
    _countries['EH(212)'] = 'WESTERN_SAHARA';
    _countries['YE(967)'] = 'YEMEN';
    _countries['ZM(260)'] = 'ZAMBIA';
    _countries['ZW(263)'] = 'ZIMBABWE';
  }

  Map get countries => _countries;
}

class CountriesKey {
  var _countrieskey = new Map<String, String>();

  CountriesKey() {
    _countrieskey['AF(93)'] = 'af';
    _countrieskey['AL(335)'] = 'al';
    _countrieskey['DZ(213)'] = 'dz';
    _countrieskey['AS(1-684)'] = 'as';
    _countrieskey['AD(376)'] = 'ad';
    _countrieskey['AO(244)'] = 'ao';
    _countrieskey['AI(1-264)'] = 'ai';
    _countrieskey['AQ(672)'] = 'aq';
    _countrieskey['AG(1-268)'] = 'ag';
    _countrieskey['AR(54)'] = 'ar';
    _countrieskey['AM(374)'] = 'am';
    _countrieskey['AW(297)'] = 'aw';
    _countrieskey['AU(61)'] = 'au';
    _countrieskey['AT(43)'] = 'at';
    _countrieskey['AZ(994)'] = 'az';
    _countrieskey['BS(1-242)'] = 'bs';
    _countrieskey['BH(973)'] = 'bh';
    _countrieskey['BD(880)'] = 'bd';
    _countrieskey['BB(1-246)'] = 'bb';
    _countrieskey['BY(375)'] = 'by';
    _countrieskey['BE(32)'] = 'be';
    _countrieskey['BZ(501)'] = 'bz';
    _countrieskey['BJ(229)'] = 'bj';
    _countrieskey['BM(1-441)'] = 'bm';
    _countrieskey['BT(975)'] = 'bt';
    _countrieskey['BO(591)'] = 'bo';
    _countrieskey['BA(387)'] = 'ba';
    _countrieskey['BW(267)'] = 'bw';
    _countrieskey['BR(55)'] = 'br';
    _countrieskey['IO(246)'] = 'io';
    _countrieskey['VG(1-284)'] = 'vg';
    _countrieskey['BN(673)'] = 'bn';
    _countrieskey['BG(359)'] = 'bg';
    _countrieskey['BF(226)'] = 'bf';
    _countrieskey['BI(257)'] = 'bi';
    _countrieskey['KH(855)'] = 'kh';
    _countrieskey['CM(237)'] = 'cm';
    _countrieskey['CA(1)'] = 'ca';
    _countrieskey['CV(238)'] = 'cv';
    _countrieskey['KY(1-345)'] = 'ky';
    _countrieskey['CF(236)'] = 'cf';
    _countrieskey['TD(235)'] = 'td';
    _countrieskey['CL(56)'] = 'cl';
    _countrieskey['CN(86)'] = 'cn';
    _countrieskey['CX(61)'] = 'cx';
    _countrieskey['CC(61)'] = 'cc';
    _countrieskey['CO(57)'] = 'co';
    _countrieskey['KM(269)'] = 'km';
    _countrieskey['CK(682)'] = 'ck';
    _countrieskey['CR(506)'] = 'cr';
    _countrieskey['HR(385)'] = 'hr';
    _countrieskey['CU(53)'] = 'cu';
    _countrieskey['CW(599)'] = 'cw';
    _countrieskey['CY(357)'] = 'cy';
    _countrieskey['CZ(420)'] = 'cz';
    _countrieskey['CD(243)'] = 'cd';
    _countrieskey['DK(45)'] = 'dk';
    _countrieskey['DJ(253)'] = 'dj';
    _countrieskey['DM(1-767)'] = 'dm';
    _countrieskey['1-829'] = '1-809';
    _countrieskey['TL(670)'] = 'tl';
    _countrieskey['EC(593)'] = 'ec';
    _countrieskey['EG(20)'] = 'eg';
    _countrieskey['SV(503)'] = 'sv';
    _countrieskey['GQ(240)'] = 'gq';
    _countrieskey['ER(291)'] = 'er';
    _countrieskey['EE(372)'] = 'ee';
    _countrieskey['ET(251)'] = 'et';
    _countrieskey['FK(500)'] = 'fk';
    _countrieskey['FO(298)'] = 'fo';
    _countrieskey['FJ(679)'] = 'fj';
    _countrieskey['FI(358)'] = 'fi';
    _countrieskey['FR(33)'] = 'fr';
    _countrieskey['PF(689)'] = 'pf';
    _countrieskey['GA(241)'] = 'ga';
    _countrieskey['GM(220)'] = 'gm';
    _countrieskey['GE(995)'] = 'ge';
    _countrieskey['DE(49)'] = 'de';
    _countrieskey['GH(233)'] = 'gh';
    _countrieskey['GI(350)'] = 'gi';
    _countrieskey['GR(30)'] = 'gr';
    _countrieskey['GL(299)'] = 'gl';
    _countrieskey['GD(1-473)'] = 'gd';
    _countrieskey['GU(1-671)'] = 'gu';
    _countrieskey['GT(502)'] = 'gt';
    _countrieskey['GG(44-1481)'] = 'gg';
    _countrieskey['GN(224)'] = 'gn';
    _countrieskey['GY(592)'] = 'gy';
    _countrieskey['HT(509)'] = 'ht';
    _countrieskey['HN(504)'] = 'hn';
    _countrieskey['HK(852)'] = 'hk';
    _countrieskey['HU(36)'] = 'hu';
    _countrieskey['IS(354)'] = 'is';
    _countrieskey['IN(91)'] = 'in';
    _countrieskey['ID(62)'] = 'id';
    _countrieskey['IR(98)'] = 'ir';
    _countrieskey['IQ(964)'] = 'iq';
    _countrieskey['IE(353)'] = 'ie';
    _countrieskey['IM(44-1624)'] = 'im';
    _countrieskey['IL(972)'] = 'il';
    _countrieskey['IT(39)'] = 'it';
    _countrieskey['CI(225)'] = 'ci';
    _countrieskey['JM(1-876)'] = 'jm';
    _countrieskey['JP(81)'] = 'jp';
    _countrieskey['JE(44-1534)'] = 'je';
    _countrieskey['JO(962)'] = 'jo';
    _countrieskey['KZ(7)'] = 'kz';
    _countrieskey['KE(254)'] = '';
    _countrieskey['KI(686)'] = 'ki';
    _countrieskey['XK(383)'] = 'xk';
    _countrieskey['KW(965)'] = 'kw';
    _countrieskey['KG(996)'] = 'kg';
    _countrieskey['LA(856)'] = 'la';
    _countrieskey['LV(371)'] = 'lv';
    _countrieskey['LB(961)'] = 'lb';
    _countrieskey['LS(266)'] = 'ls';
    _countrieskey['LR(231)'] = 'lr';
    _countrieskey['LY(218)'] = 'ly';
    _countrieskey['LI(423)'] = 'li';
    _countrieskey['LT(370)'] = 'lt';
    _countrieskey['LU(352)'] = 'lu';
    _countrieskey['MO(853)'] = 'mo';
    _countrieskey['MK(389)'] = 'mk';
    _countrieskey['MG(261)'] = 'mg';
    _countrieskey['MW(265)'] = 'mw';
    _countrieskey['MY(60)'] = 'my';
    _countrieskey['MV(960)'] = 'mv';
    _countrieskey['ML(223)'] = 'ml';
    _countrieskey['MT(356)'] = 'mt';
    _countrieskey['MH(692)'] = 'mh';
    _countrieskey['MR(222)'] = 'mr';
    _countrieskey['MU(230)'] = 'mu';
    _countrieskey['YT(262)'] = 'yt';
    _countrieskey['MX(52)'] = 'mx';
    _countrieskey['FM(691)'] = 'fm';
    _countrieskey['MD(373)'] = 'md';
    _countrieskey['MC(377)'] = 'mc';
    _countrieskey['MN(976)'] = 'mn';
    _countrieskey['ME(382)'] = 'me';
    _countrieskey['MS(1-664)'] = 'ms';
    _countrieskey['MA(212)'] = 'ma';
    _countrieskey['MZ(258)'] = 'mz';
    _countrieskey['MM(95)'] = 'mm';
    _countrieskey['NA(264)'] = 'na';
    _countrieskey['NR(674)'] = 'nr';
    _countrieskey['NP(977)'] = 'np';
    _countrieskey['NL(31)'] = 'nl';
    _countrieskey['AN(599)'] = 'an';
    _countrieskey['NC(687)'] = 'nc';
    _countrieskey['NZ(64)'] = 'nz';
    _countrieskey['NI(505)'] = 'ni';
    _countrieskey['NE(227)'] = 'ne';
    _countrieskey['NG(234)'] = 'ng';
    _countrieskey['NU(683)'] = 'nu';
    _countrieskey['KP(850)'] = 'kp';
    _countrieskey['MP(1-670)'] = 'mp';
    _countrieskey['NO(47)'] = 'no';
    _countrieskey['OM(968)'] = 'om';
    _countrieskey['PK(92)'] = 'pk';
    _countrieskey['PW(680)'] = 'pw';
    _countrieskey['PS(970)'] = 'ps';
    _countrieskey['PA(507)'] = 'pa';
    _countrieskey['PG(675)'] = 'pg';
    _countrieskey['PY(595)'] = 'py';
    _countrieskey['PE(51)'] = 'pe';
    _countrieskey['PH(63)'] = 'ph';
    _countrieskey['PN(64)'] = 'pn';
    _countrieskey['PL(48)'] = 'pl';
    _countrieskey['PT(351)'] = 'pt';
    _countrieskey['1-787(1-939)'] = '1-787';
    _countrieskey['QA(974)'] = 'qa';
    _countrieskey['CG(242)'] = 'cg';
    _countrieskey['RE(262)'] = 're';
    _countrieskey['RO(40)'] = 'ro';
    _countrieskey['RU(7)'] = 'ru';
    _countrieskey['RW(250)'] = 'rw';
    _countrieskey['BL(590)'] = 'bl';
    _countrieskey['SH(290)'] = 'sh';
    _countrieskey['KN(1-869)'] = 'kn';
    _countrieskey['LC(1-758)'] = 'lc';
    _countrieskey['MF(590)'] = 'mf';
    _countrieskey['PM(508)'] = 'pm';
    _countrieskey['VC(1-784)'] = 'vc';
    _countrieskey['WS(685)'] = 'ws';
    _countrieskey['SM(378)'] = 'sm';
    _countrieskey['ST(239)'] = 'st';
    _countrieskey['SA(966)'] = 'sa';
    _countrieskey['SN(221)'] = 'sn';
    _countrieskey['RS(381)'] = 'rs';
    _countrieskey['SC(248)'] = 'sc';
    _countrieskey['SL(232)'] = 'sl';
    _countrieskey['SG(65)'] = 'sg';
    _countrieskey['SX(1-721)'] = 'sx';
    _countrieskey['SK(421)'] = 'sk';
    _countrieskey['SI(386)'] = 'si';
    _countrieskey['SB(677)'] = 'sb';
    _countrieskey['SO(252)'] = 'so';
    _countrieskey['ZA(27)'] = 'za';
    _countrieskey['KR(82)'] = 'kr';
    _countrieskey['SS(211)'] = 'ss';
    _countrieskey['ES(34)'] = 'es';
    _countrieskey['LK(94)'] = 'lk';
    _countrieskey['SD(249)'] = 'sd';
    _countrieskey['SR(597)'] = 'sr';
    _countrieskey['SJ(47)'] = 'sj';
    _countrieskey['SZ(268)'] = 'sz';
    _countrieskey['SE(46)'] = 'se';
    _countrieskey['CH(41)'] = 'ch';
    _countrieskey['SY(963)'] = 'sy';
    _countrieskey['TW(886)'] = 'tw';
    _countrieskey['TJ(992)'] = 'tj';
    _countrieskey['TZ(255)'] = 'tz';
    _countrieskey['TH(66)'] = 'th';
    _countrieskey['TG(228)'] = 'tg';
    _countrieskey['TK(690)'] = 'tk';
    _countrieskey['TO(676)'] = 'to';
    _countrieskey['TT(1-868)'] = 'tt';
    _countrieskey['TN(216)'] = 'tn';
    _countrieskey['TR(90)'] = 'tr';
    _countrieskey['TM(993)'] = 'tm';
    _countrieskey['TC(1-649)'] = 'tc';
    _countrieskey['TV(688)'] = 'tv';
    _countrieskey['UG(256)'] = 'ug';
    _countrieskey['UA(380)'] = 'ua';
    _countrieskey['AE(971)'] = 'ae';
    _countrieskey['GB(44)'] = 'gb';
    _countrieskey['US(1)'] = 'us';
    _countrieskey['UY(598)'] = 'uy';
    _countrieskey['UZ(998)'] = 'uz';
    _countrieskey['VU(678)'] = 'vu';
    _countrieskey['VA(379)'] = 'va';
    _countrieskey['VE(58)'] = 've';
    _countrieskey['VN(84)'] = 'vn';
    _countrieskey['WF(681)'] = 'wf';
    _countrieskey['EH(212)'] = 'eh';
    _countrieskey['YE(967)'] = 'ye';
    _countrieskey['ZM(260)'] = 'zm';
    _countrieskey['ZW(263)'] = 'zw';
  }

  Map get countrieskey => _countrieskey;
}

//for the welcome guide
class IntroViews {
  var _pages = new List<PageViewModel>();
//  var headingTextStyle = new TextStyle(
//    fontSize: 24.0,
//    fontFamily: 'MyFont',_pages
//    color: Colors.white,
//    fontWeight: FontWeight.bold,
//  );
  var descriptionTextStyle = new TextStyle(fontSize: 20.0, fontFamily: 'MyFont', color: Colors.white);

  IntroViews({String role, bool isTrackingEnabled}) {


    _pages = [
      new PageViewModel(
          pageColor: const Color(0xFF03A9F4),
          //iconImageAssetPath: '',
          iconColor: null,
          bubbleBackgroundColor: Colors.white,
          body: Text(
            "Never miss out any information from your child’s school",
          ),
          title: Text(
            'Stay in tune with your child at school',
//            style: headingTextStyle,
            textAlign: TextAlign.center,
          ),
          textStyle: descriptionTextStyle,
//          mainImage: Image.asset(
//            'assets/images/parentguide1.png',
//            height: 285.0,
//            width: 285.0,
//            alignment: Alignment.center,
//          )
      ),
      new PageViewModel(
        pageColor: const Color(0xFF8BC34A),
        //iconImageAssetPath: 'assets/leaves.png',
        iconColor: null,
        bubbleBackgroundColor: Colors.white,
        body: Text(
          'Easy access to daily academic updates – homework, school diary, time-tables and more',
        ),
        title: Text(
          'Keep an eye on daily processes ',
//          style: headingTextStyle,


          textAlign: TextAlign.center,
        ),
//        mainImage: Image.asset(
//          'assets/images/parentguide2.png',
//          height: 285.0,
//          width: 285.0,
//          alignment: Alignment.center,
//        ),
        textStyle: descriptionTextStyle,
      ),
      new PageViewModel(
        pageColor: const Color(0xFF607D8B),
        // iconImageAssetPath: 'assets/school-diary.png',
        iconColor: null,
        bubbleBackgroundColor: Colors.white,
        body: Text(
          "Regular and prompt availability of school circulars",
        ),
        title: Text(
          "Stay updated about important happenings",
//          style: headingTextStyle,
          textAlign: TextAlign.center,
        ),
//        mainImage: Image.asset(
//          'assets/images/parentguide3.png',
//          height: 285.0,
//          width: 285.0,
//          alignment: Alignment.center,
//        ),
        textStyle: descriptionTextStyle,
      ),
      new PageViewModel(
          pageColor: const Color.fromARGB(255, 25, 118, 210),
          // iconImageAssetPath: 'assets/homework.png',
          iconColor: null,
          bubbleBackgroundColor: Colors.white,
          body: Text(
            'Easy communication with teachers via instant messages',
          ),
          title: Text(
            "Stay connected with your child's teachers",
//            style: headingTextStyle,
            textAlign: TextAlign.center,
          ),
          textStyle: descriptionTextStyle,
//          mainImage: Image.asset(
//            'assets/images/parentguide4.png',
//            height: 285.0,
//            width: 285.0,
//            alignment: Alignment.center,
//          )
      ),
    ];


//    if (role == "PARENT") {
//      if (isTrackingEnabled) {
//        _pages = [
//          new PageViewModel(
//              pageColor: const Color(0xFF03A9F4),
//              //iconImageAssetPath: '',
//              iconColor: null,
//              bubbleBackgroundColor: Colors.white,
//              body: Text(
//                "Get access to all the information you need to ensure your child's safety and well-being at school",
//              ),
//              title: Text(
//                'An answer to all your worries about your child!',
////                style: headingTextStyle,
//                textAlign: TextAlign.center,
//              ),
//              textStyle: descriptionTextStyle,
//              mainImage: Image.asset(
//                'assets/images/parent1.png',
//                height: 285.0,
//                width: 285.0,
//                alignment: Alignment.center,
//              )),
//          new PageViewModel(
//            pageColor: const Color(0xFF8BC34A),
//            //iconImageAssetPath: 'assets/leaves.png',
//            iconColor: null,
//            bubbleBackgroundColor: Colors.white,
//            body: Text(
//              'Know the activities of your child at school anywhere, anytime',
//            ),
//            title: Text(
//              'Never miss out any activity of your child!',
////              style: headingTextStyle,
//              textAlign: TextAlign.center,
//            ),
//            mainImage: Image.asset(
//              'assets/images/parent2.png',
//              height: 285.0,
//              width: 285.0,
//              alignment: Alignment.center,
//            ),
//            textStyle: descriptionTextStyle,
//          ),
//          new PageViewModel(
//            pageColor: const Color(0xFF607D8B),
//            // iconImageAssetPath: 'assets/school-diary.png',
//            iconColor: null,
//            bubbleBackgroundColor: Colors.white,
//            body: Text(
//              "Ensure your child's safe travel to and from the school",
//            ),
//            title: Text(
//              "No more worries about your child's school bus",
////              style: headingTextStyle,
//              textAlign: TextAlign.center,
//            ),
//            mainImage: Image.asset(
//              'assets/images/parent3.png',
//              height: 285.0,
//              width: 285.0,
//              alignment: Alignment.center,
//            ),
//            textStyle: descriptionTextStyle,
//          ),
//          new PageViewModel(
//              pageColor: const Color.fromARGB(255, 25, 118, 210),
//              // iconImageAssetPath: 'assets/homework.png',
//              iconColor: null,
//              bubbleBackgroundColor: Colors.white,
//              body: Text(
//                'Easy communication with teachers via instant messages',
//              ),
//              title: Text(
//                "Stay connected with your child's teachers",
////                style: headingTextStyle,
//                textAlign: TextAlign.center,
//              ),
//              textStyle: descriptionTextStyle,
//              mainImage: Image.asset(
//                'assets/images/parent4.png',
//                height: 285.0,
//                width: 285.0,
//                alignment: Alignment.center,
//              )),
//        ];
//      } else {
//
//      }
//    } else {
//      if (isTrackingEnabled) {
//        _pages = [
//          new PageViewModel(
//              pageColor: const Color(0xFF03A9F4),
//              // iconImageAssetPath: 'assets/homework.png',
//              iconColor: null,
//              bubbleBackgroundColor: Colors.white,
//              body: Text(
//                'Manage all your responsibilities at school easier than ever before',
//              ),
//              title: Text(
//                'A complete solution to ease your work at school',
//                style: headingTextStyle,
//                textAlign: TextAlign.center,
//              ),
//              textStyle: descriptionTextStyle,
//              mainImage: Image.asset(
//                'assets/images/teacherguide1.png',
//                height: 285.0,
//                width: 285.0,
//                alignment: Alignment.center,
//              )),
//          new PageViewModel(
//            pageColor: const Color(0xFF8BC34A),
//            //iconImageAssetPath: 'assets/leaves.png',
//            iconColor: null,
//            bubbleBackgroundColor: Colors.white,
//            body: Text(
//              "Automatic attendance recording right at the moment a student enters the class",
//            ),
//            title: Text(
//              "Attendance marking isn't tiresome anymore!",
//              style: headingTextStyle,
//              textAlign: TextAlign.center,
//            ),
//            mainImage: Image.asset(
//              'assets/images/teacherguide2.png',
//              height: 285.0,
//              width: 285.0,
//              alignment: Alignment.center,
//            ),
//            textStyle: descriptionTextStyle,
//          ),
//          new PageViewModel(
//              pageColor: const Color(0xFF607D8B),
//              // iconImageAssetPath: 'assets/homework.png',
//              iconColor: null,
//              bubbleBackgroundColor: Colors.white,
//              body: Text(
//                'Manage daily processes like homework, school diary, time tables etc digitally',
//              ),
//              title: Text(
//                'Say goodbye to time-consuming paper work!',
//                style: headingTextStyle,
//                textAlign: TextAlign.center,
//              ),
//              textStyle: descriptionTextStyle,
//              mainImage: Image.asset(
//                'assets/images/teacherguide3.png',
//                height: 285.0,
//                width: 285.0,
//                alignment: Alignment.center,
//              )),
//          new PageViewModel(
//            pageColor: const Color.fromARGB(255, 25, 118, 210),
//            // iconImageAssetPath: 'assets/school-diary.png',
//            iconColor: null,
//            bubbleBackgroundColor: Colors.white,
//            body: Text(
//              'Easy communication with parents via instant messages',
//            ),
//            title: Text(
//              "Stay connected to each student's parents!",
//              style: headingTextStyle,
//              textAlign: TextAlign.center,
//            ),
//            mainImage: Image.asset(
//              'assets/images/teacherguide4.png',
//              height: 285.0,
//              width: 285.0,
//              alignment: Alignment.center,
//            ),
//            textStyle: descriptionTextStyle,
//          ),
//        ];
//      } else {
//        _pages = [
//          new PageViewModel(
//              pageColor: const Color(0xFF03A9F4),
//              // iconImageAssetPath: 'assets/homework.png',
//              iconColor: null,
//              bubbleBackgroundColor: Colors.white,
//              body: Text(
//                'Manage all your responsibilities at school easier than ever before',
//              ),
//              title: Text(
//                'A complete solution to ease your work',
//                style: headingTextStyle,
//                textAlign: TextAlign.center,
//              ),
//              textStyle: descriptionTextStyle,
//              mainImage: Image.asset(
//                'assets/images/teacherwithoutlocation1.png',
//                height: 285.0,
//                width: 285.0,
//                alignment: Alignment.center,
//              )),
//          new PageViewModel(
//            pageColor: const Color(0xFF8BC34A),
//            //iconImageAssetPath: 'assets/leaves.png',
//            iconColor: null,
//            bubbleBackgroundColor: Colors.white,
//            body: Text(
//              "Manage daily processes like homework, school diary, time tables etc digitally",
//            ),
//            title: Text(
//              "Say goodbye to time-consuming paper work!",
//              style: headingTextStyle,
//              textAlign: TextAlign.center,
//            ),
//            mainImage: Image.asset(
//              'assets/images/teacherwithoutlocation2.png',
//              height: 285.0,
//              width: 285.0,
//              alignment: Alignment.center,
//            ),
//            textStyle: descriptionTextStyle,
//          ),
//          new PageViewModel(
//            pageColor: const Color.fromARGB(255, 25, 118, 210),
//            // iconImageAssetPath: 'assets/school-diary.png',
//            iconColor: null,
//            bubbleBackgroundColor: Colors.white,
//            body: Text(
//              'Easy communication with parents via instant messages',
//            ),
//            title: Text(
//              "Stay connected to each student's parents!",
//              style: headingTextStyle,
//              textAlign: TextAlign.center,
//            ),
//            mainImage: Image.asset(
//              'assets/images/teacherwithoutlocation3.png',
//              height: 285.0,
//              width: 285.0,
//              alignment: Alignment.center,
//            ),
//            textStyle: descriptionTextStyle,
//          ),
//        ];
//      }
//    }
  }

  List get pages => _pages;
}
