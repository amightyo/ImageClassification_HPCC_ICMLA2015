﻿/**
 * @Author Itauma Itauma
 * @date   June, 2015
 */
//EXPORT KmeansSpeech := 'todo';

//EXPORT KmeansAR := 'todo';
//EXPORT KmeansCaltech101 := 'todo';
//EXPORT KmeansExplore := 'todo';
IMPORT ML;
IMPORT $;


//Input Data       

value_record := RECORD
REAL f1;
REAL f2;    
REAL f3;
REAL f4;
REAL f5;    
REAL f6;    
REAL f7;    
REAL f8;    
REAL f9;    
REAL f10;   
REAL f11;   
REAL f12;   
REAL f13;   
REAL f14;   
REAL f15;   
REAL f16;   
REAL f17;   
REAL f18;   
REAL f19;   
REAL f20;   
REAL f21;   
REAL f22;   
REAL f23;   
REAL f24;   
REAL f25;   
REAL f26;   
REAL f27;   
REAL f28;   
REAL f29;   
REAL f30;   
REAL f31;   
REAL f32;   
REAL f33;   
REAL f34;   
REAL f35;   
REAL f36;   
REAL f37;   
REAL f38;   
REAL f39;   
REAL f40;   
REAL f41;   
REAL f42;   
REAL f43;   
REAL f44;   
REAL f45;   
REAL f46;   
REAL f47;   
REAL f48;   
REAL f49;   
REAL f50;   
REAL f51;   
REAL f52;   
REAL f53;   
REAL f54;   
REAL f55;   
REAL f56;   
REAL f57;   
REAL f58;   
REAL f59;   
REAL f60;   
REAL f61;   
REAL f62;   
REAL f63;   
REAL f64;   
REAL f65;   
REAL f66;   
REAL f67;   
REAL f68;   
REAL f69;   
REAL f70;   
REAL f71;   
REAL f72;   
REAL f73;   
REAL f74;   
REAL f75;   
REAL f76;   
REAL f77;   
REAL f78;   
REAL f79;   
REAL f80;   
REAL f81;   
REAL f82;   
REAL f83;   
REAL f84;   
REAL f85;   
REAL f86;   
REAL f87;   
REAL f88;   
REAL f89;   
REAL f90;   
REAL f91;   
REAL f92;   
REAL f93;   
REAL f94;   
REAL f95;   
REAL f96;   
REAL f97;   
REAL f98;   
REAL f99;   
REAL f100;  
REAL f101;  
REAL f102;  
REAL f103;  
REAL f104;  
REAL f105;  
REAL f106;  
REAL f107;  
REAL f108;  
REAL f109;  
REAL f110;  
REAL f111;  
REAL f112;  
REAL f113;  
REAL f114;  
REAL f115;  
REAL f116;  
REAL f117;  
REAL f118;  
REAL f119;  
REAL f120;  
REAL f121;  
REAL f122;  
REAL f123;  
REAL f124;  
REAL f125;  
REAL f126;  
REAL f127;  
REAL f128;  
REAL f129;  
REAL f130;  
REAL f131;  
REAL f132;  
REAL f133;  
REAL f134;  
REAL f135;  
REAL f136;  
REAL f137;  
REAL f138;  
REAL f139;  
REAL f140;  
REAL f141;  
REAL f142;  
REAL f143;  
REAL f144;  
REAL f145;  
REAL f146;  
REAL f147;  
REAL f148;  
REAL f149;  
REAL f150;  
REAL f151;  
REAL f152;  
REAL f153;  
REAL f154;  
REAL f155;  
REAL f156;  
REAL f157;  
REAL f158;  
REAL f159;  
REAL f160;  
REAL f161;  
REAL f162;  
REAL f163;  
REAL f164;  
REAL f165;  
REAL f166;  
REAL f167;  
REAL f168;  
REAL f169;  
REAL f170;  
REAL f171;  
REAL f172;  
REAL f173;  
REAL f174;  
REAL f175;  
REAL f176;  
REAL f177;  
REAL f178;  
REAL f179;  
REAL f180;  
REAL f181;  
REAL f182;  
REAL f183;  
REAL f184;  
REAL f185;  
REAL f186;  
REAL f187;  
REAL f188;  
REAL f189;  
REAL f190;  
REAL f191;  
REAL f192;  
REAL f193;  
REAL f194;  
REAL f195;  
REAL f196;  
REAL f197;  
REAL f198;  
REAL f199;  
REAL f200;  
REAL f201;  
REAL f202;  
REAL f203;  
REAL f204;  
REAL f205;  
REAL f206;  
REAL f207;  
REAL f208;  
REAL f209;  
REAL f210;  
REAL f211;  
REAL f212;  
REAL f213;  
REAL f214;  
REAL f215;  
REAL f216;  
REAL f217;  
REAL f218;  
REAL f219;  
REAL f220;  
REAL f221;  
REAL f222;  
REAL f223;  
REAL f224;  
REAL f225;  
REAL f226;  
REAL f227;  
REAL f228;  
REAL f229;  
REAL f230;  
REAL f231;  
REAL f232;  
REAL f233;  
REAL f234;  
REAL f235;  
REAL f236;  
REAL f237;  
REAL f238;  
REAL f239;  
REAL f240;  
REAL f241;  
REAL f242;  
REAL f243;  
REAL f244;  
REAL f245;  
REAL f246;  
REAL f247;  
REAL f248;  
REAL f249;  
REAL f250;  
REAL f251;  
REAL f252;  
REAL f253;  
REAL f254;  
REAL f255;  
REAL f256;  
REAL f257;  
REAL f258;  
REAL f259;  
REAL f260;  
REAL f261;  
REAL f262;  
REAL f263;  
REAL f264;  
REAL f265;  
REAL f266;  
REAL f267;  
REAL f268;  
REAL f269;  
REAL f270;  
REAL f271;  
REAL f272;  
REAL f273;  
REAL f274;  
REAL f275;  
REAL f276;  
REAL f277;  
REAL f278;  
REAL f279;  
REAL f280;  
REAL f281;  
REAL f282;  
REAL f283;  
REAL f284;  
REAL f285;  
REAL f286;  
REAL f287;  
REAL f288;  
REAL f289;  
REAL f290;  
REAL f291;  
REAL f292;  
REAL f293;  
REAL f294;  
REAL f295;  
REAL f296;  
REAL f297;  
REAL f298;  
REAL f299;  
REAL f300;  
REAL f301;  
REAL f302;  
REAL f303;  
REAL f304;  
REAL f305;  
REAL f306;  
REAL f307;  
REAL f308;  
REAL f309;  
REAL f310;  
REAL f311;  
REAL f312;  
REAL f313;  
REAL f314;  
REAL f315;  
REAL f316;  
REAL f317;  
REAL f318;  
REAL f319;  
REAL f320;  
REAL f321;  
REAL f322;  
REAL f323;  
REAL f324;  
REAL f325;  
REAL f326;  
REAL f327;  
REAL f328;  
REAL f329;  
REAL f330;  
REAL f331;  
REAL f332;  
REAL f333;  
REAL f334;  
REAL f335;  
REAL f336;  
REAL f337;  
REAL f338;  
REAL f339;  
REAL f340;  
REAL f341;  
REAL f342;  
REAL f343;  
REAL f344;  
REAL f345;  
REAL f346;  
REAL f347;  
REAL f348;  
REAL f349;  
REAL f350;  
REAL f351;  
REAL f352;  
REAL f353;  
REAL f354;  
REAL f355;  
REAL f356;  
REAL f357;  
REAL f358;  
REAL f359;  
REAL f360;  
REAL f361;  
REAL f362;  
REAL f363;  
REAL f364;  
REAL f365;  
REAL f366;  
REAL f367;  
REAL f368;  
REAL f369;  
REAL f370;  
REAL f371;  
REAL f372;  
REAL f373;  
REAL f374;  
REAL f375;  
REAL f376;  
REAL f377;  
REAL f378;  
REAL f379;  
REAL f380;  
REAL f381;  
REAL f382;  
REAL f383;  
REAL f384;  
REAL f385;  
REAL f386;  
REAL f387;  
REAL f388;  
REAL f389;  
REAL f390;  
REAL f391;  
REAL f392;  
REAL f393;  
REAL f394;  
REAL f395;  
REAL f396;  
REAL f397;  
REAL f398;  
REAL f399;  
REAL f400;  
REAL f401;  
REAL f402;  
REAL f403;  
REAL f404;  
REAL f405;  
REAL f406;  
REAL f407;  
REAL f408;  
REAL f409;  
REAL f410;  
REAL f411;  
REAL f412;  
REAL f413;  
REAL f414;  
REAL f415;  
REAL f416;  
REAL f417;  
REAL f418;  
REAL f419;  
REAL f420;  
REAL f421;  
REAL f422;  
REAL f423;  
REAL f424;  
REAL f425;  
REAL f426;  
REAL f427;  
REAL f428;  
REAL f429;  
REAL f430;  
REAL f431;  
REAL f432;  
REAL f433;  
REAL f434;  
REAL f435;  
REAL f436;  
REAL f437;  
REAL f438;  
REAL f439;  
REAL f440;  
REAL f441;  
REAL f442;  
REAL f443;  
REAL f444;  
REAL f445;  
REAL f446;  
REAL f447;  
REAL f448;  
REAL f449;  
REAL f450;  
REAL f451;  
REAL f452;  
REAL f453;  
REAL f454;  
REAL f455;  
REAL f456;  
REAL f457;  
REAL f458;  
REAL f459;  
REAL f460;  
REAL f461;  
REAL f462;  
REAL f463;  
REAL f464;  
REAL f465;  
REAL f466;  
REAL f467;  
REAL f468;  
REAL f469;  
REAL f470;  
REAL f471;  
REAL f472;  
REAL f473;  
REAL f474;  
REAL f475;  
REAL f476;  
REAL f477;  
REAL f478;  
REAL f479;  
REAL f480;  
REAL f481;  
REAL f482;  
REAL f483;  
REAL f484;  
REAL f485;  
REAL f486;  
REAL f487;  
REAL f488;  
REAL f489;  
REAL f490;  
REAL f491;  
REAL f492;  
REAL f493;  
REAL f494;  
REAL f495;  
REAL f496;  
REAL f497;  
REAL f498;  
REAL f499;  
REAL f500;  
REAL f501;  
REAL f502;  
REAL f503;  
REAL f504;  
REAL f505;  
REAL f506;  
REAL f507;  
REAL f508;  
REAL f509;  
REAL f510;  
REAL f511;  
REAL f512;  
REAL f513;  
REAL f514;  
REAL f515;  
REAL f516;  
REAL f517;  
REAL f518;  
REAL f519;  
REAL f520;  
REAL f521;  
REAL f522;  
REAL f523;  
REAL f524;  
REAL f525;  
REAL f526;  
REAL f527;  
REAL f528;  
REAL f529;  
REAL f530;  
REAL f531;  
REAL f532;  
REAL f533;  
REAL f534;  
REAL f535;  
REAL f536;  
REAL f537;  
REAL f538;  
REAL f539;  
REAL f540;  
REAL f541;  
REAL f542;  
REAL f543;  
REAL f544;  
REAL f545;  
REAL f546;  
REAL f547;  
REAL f548;  
REAL f549;  
REAL f550;  
REAL f551;  
REAL f552;  
REAL f553;  
REAL f554;  
REAL f555;  
REAL f556;  
REAL f557;  
REAL f558;  
REAL f559;  
REAL f560;  
REAL f561;  
REAL f562;  
REAL f563;  
REAL f564;  
REAL f565;  
REAL f566;  
REAL f567;  
REAL f568;  
REAL f569;  
REAL f570;  
REAL f571;  
REAL f572;  
REAL f573;  
REAL f574;  
REAL f575;  
REAL f576;  
REAL f577;  
REAL f578;  
REAL f579;  
REAL f580;  
REAL f581;  
REAL f582;  
REAL f583;  
REAL f584;  
REAL f585;  
REAL f586;  
REAL f587;  
REAL f588;  
REAL f589;  
REAL f590;  
REAL f591;  
REAL f592;  
REAL f593;  
REAL f594;  
REAL f595;  
REAL f596;  
REAL f597;  
REAL f598;  
REAL f599;  
REAL f600;  
REAL f601;  
REAL f602;  
REAL f603;  
REAL f604;  
REAL f605;  
REAL f606;  
REAL f607;  
REAL f608;  
REAL f609;  
REAL f610;  
REAL f611;  
REAL f612;  
REAL f613;  
REAL f614;  
REAL f615;  
REAL f616;  
REAL f617;  
REAL f618;  
REAL f619;  
REAL f620;  
REAL f621;  
REAL f622;  
REAL f623;  
REAL f624;  
REAL f625;  
REAL f626;  
REAL f627;  
REAL f628;  
REAL f629;  
REAL f630;  
REAL f631;  
REAL f632;  
REAL f633;  
REAL f634;  
REAL f635;  
REAL f636;  
REAL f637;  
REAL f638;  
REAL f639;  
REAL f640;  
REAL f641;  
REAL f642;  
REAL f643;  
REAL f644;  
REAL f645;  
REAL f646;  
REAL f647;  
REAL f648;  
REAL f649;  
REAL f650;  
REAL f651;  
REAL f652;  
REAL f653;  
REAL f654;  
REAL f655;  
REAL f656;  
REAL f657;  
REAL f658;  
REAL f659;  
REAL f660;  
REAL f661;  
REAL f662;  
REAL f663;  
REAL f664;  
REAL f665;  
REAL f666;  
REAL f667;  
REAL f668;  
REAL f669;  
REAL f670;  
REAL f671;  
REAL f672;  
REAL f673;  
REAL f674;  
REAL f675;  
REAL f676;  
REAL f677;  
REAL f678;  
REAL f679;  
REAL f680;  
REAL f681;  
REAL f682;  
REAL f683;  
REAL f684;  
REAL f685;  
REAL f686;  
REAL f687;  
REAL f688;  
REAL f689;  
REAL f690;  
REAL f691;  
REAL f692;  
REAL f693;  
REAL f694;  
REAL f695;  
REAL f696;  
REAL f697;  
REAL f698;  
REAL f699;  
REAL f700;  
REAL f701;  
REAL f702;  
REAL f703;  
REAL f704;  
REAL f705;  
REAL f706;  
REAL f707;  
REAL f708;  
REAL f709;  
REAL f710;  
REAL f711;  
REAL f712;  
REAL f713;  
REAL f714;  
REAL f715;  
REAL f716;  
REAL f717;  
REAL f718;  
REAL f719;  
REAL f720;  
REAL f721;  
REAL f722;  
REAL f723;  
REAL f724;  
REAL f725;  
REAL f726;  
REAL f727;  
REAL f728;  
REAL f729;  
REAL f730;  
REAL f731;  
REAL f732;  
REAL f733;  
REAL f734;  
REAL f735;  
REAL f736;  
REAL f737;  
REAL f738;  
REAL f739;  
REAL f740;  
REAL f741;  
REAL f742;  
REAL f743;  
REAL f744;  
REAL f745;  
REAL f746;  
REAL f747;  
REAL f748;  
REAL f749;  
REAL f750;  
REAL f751;  
REAL f752;  
REAL f753;  
REAL f754;  
REAL f755;  
REAL f756;  
REAL f757;  
REAL f758;  
REAL f759;  
REAL f760;  
REAL f761;  
REAL f762;  
REAL f763;  
REAL f764;  
REAL f765;  
REAL f766;  
REAL f767;  
REAL f768;  
REAL f769;  
REAL f770;  
REAL f771;  
REAL f772;  
REAL f773;  
REAL f774;  
REAL f775;  
REAL f776;  
REAL f777;  
REAL f778;  
REAL f779;  
REAL f780;  
REAL f781;  
REAL f782;  
REAL f783;  
REAL f784;  
REAL f785;  
REAL f786;  
REAL f787;  
REAL f788;  
REAL f789;  
REAL f790;  
REAL f791;  
REAL f792;  
REAL f793;  
REAL f794;  
REAL f795;  
REAL f796;  
REAL f797;  
REAL f798;  
REAL f799;  
REAL f800;  
REAL f801;  
REAL f802;  
REAL f803;  
REAL f804;  
REAL f805;  
REAL f806;  
REAL f807;  
REAL f808;  
REAL f809;  
REAL f810;  
REAL f811;  
REAL f812;  
REAL f813;  
REAL f814;  
REAL f815;  
REAL f816;  
REAL f817;  
REAL f818;  
REAL f819;  
REAL f820;  
REAL f821;  
REAL f822;  
REAL f823;  
REAL f824;  
REAL f825;  
REAL f826;  
REAL f827;  
REAL f828;  
REAL f829;  
REAL f830;  
REAL f831;  
REAL f832;  
REAL f833;  
REAL f834;  
REAL f835;  
REAL f836;  
REAL f837;  
REAL f838;  
REAL f839;  
REAL f840;  
REAL f841;  
REAL f842;  
REAL f843;  
REAL f844;  
REAL f845;  
REAL f846;  
REAL f847;  
REAL f848;  
REAL f849;  
REAL f850;  
REAL f851;  
REAL f852;  
REAL f853;  
REAL f854;  
REAL f855;  
REAL f856;  
REAL f857;  
REAL f858;  
REAL f859;  
REAL f860;  
REAL f861;  
REAL f862;  
REAL f863;  
REAL f864;  
REAL f865;  
REAL f866;  
REAL f867;  
REAL f868;  
REAL f869;  
REAL f870;  
REAL f871;  
REAL f872;  
REAL f873;  
REAL f874;  
REAL f875;  
REAL f876;  
REAL f877;  
REAL f878;  
REAL f879;  
REAL f880;  
REAL f881;  
REAL f882;  
REAL f883;  
REAL f884;  
REAL f885;  
REAL f886;  
REAL f887;  
REAL f888;  
REAL f889;  
REAL f890;  
REAL f891;  
REAL f892;  
REAL f893;  
REAL f894;  
REAL f895;  
REAL f896;  
REAL f897;  
REAL f898;  
REAL f899;  
REAL f900;  
REAL f901;  
REAL f902;  
REAL f903;  
REAL f904;  
REAL f905;  
REAL f906;  
REAL f907;  
REAL f908;  
REAL f909;  
REAL f910;  
REAL f911;  
REAL f912;  
REAL f913;  
REAL f914;  
REAL f915;  
REAL f916;  
REAL f917;  
REAL f918;  
REAL f919;  
REAL f920;  
REAL f921;  
REAL f922;  
REAL f923;  
REAL f924;  
REAL f925;  
REAL f926;  
REAL f927;  
REAL f928;  
REAL f929;  
REAL f930;  
REAL f931;  
REAL f932;  
REAL f933;  
REAL f934;  
REAL f935;  
REAL f936;  
REAL f937;  
REAL f938;  
REAL f939;  
REAL f940;  
REAL f941;  
REAL f942;  
REAL f943;  
REAL f944;  
REAL f945;  
REAL f946;  
REAL f947;  
REAL f948;  
REAL f949;  
REAL f950;  
REAL f951;  
REAL f952;  
REAL f953;  
REAL f954;  
REAL f955;  
REAL f956;  
REAL f957;  
REAL f958;  
REAL f959;  
REAL f960;  
REAL f961;  
REAL f962;  
REAL f963;  
REAL f964;  
REAL f965;  
REAL f966;  
REAL f967;  
REAL f968;  
REAL f969;  
REAL f970;  
REAL f971;  
REAL f972;  
REAL f973;  
REAL f974;  
REAL f975;  
REAL f976;  
REAL f977;  
REAL f978;  
REAL f979;  
REAL f980;  
REAL f981;  
REAL f982;  
REAL f983;  
REAL f984;  
REAL f985;  
REAL f986;  
REAL f987;  
REAL f988;  
REAL f989;  
REAL f990;  
REAL f991;  
REAL f992;  
REAL f993;  
REAL f994;  
REAL f995;  
REAL f996;  
REAL f997;  
REAL f998;  
REAL f999;  
REAL f1000; 
REAL f1001; 
REAL f1002; 
REAL f1003; 
REAL f1004; 
REAL f1005; 
REAL f1006; 
REAL f1007; 
REAL f1008; 
REAL f1009; 
REAL f1010; 
REAL f1011; 
REAL f1012; 
REAL f1013; 
REAL f1014; 
REAL f1015; 
REAL f1016; 
REAL f1017; 
REAL f1018; 
REAL f1019; 
REAL f1020; 
REAL f1021; 
REAL f1022; 
REAL f1023; 
REAL f1024; 
REAL f1025; 
REAL f1026; 
REAL f1027; 
REAL f1028; 
REAL f1029; 
REAL f1030; 
REAL f1031; 
REAL f1032; 
REAL f1033; 
REAL f1034; 
REAL f1035; 
REAL f1036; 
REAL f1037; 
REAL f1038; 
REAL f1039; 
REAL f1040; 
REAL f1041; 
REAL f1042; 
REAL f1043; 
REAL f1044; 
REAL f1045; 
REAL f1046; 
REAL f1047; 
REAL f1048; 
REAL f1049; 
REAL f1050; 
REAL f1051; 
REAL f1052; 
REAL f1053; 
REAL f1054; 
REAL f1055; 
REAL f1056; 
REAL f1057; 
REAL f1058; 
REAL f1059; 
REAL f1060; 
REAL f1061; 
REAL f1062; 
REAL f1063; 
REAL f1064; 
REAL f1065; 
REAL f1066; 
REAL f1067; 
REAL f1068; 
REAL f1069; 
REAL f1070; 
REAL f1071; 
REAL f1072; 
REAL f1073; 
REAL f1074; 
REAL f1075; 
REAL f1076; 
REAL f1077; 
REAL f1078; 
REAL f1079; 
REAL f1080; 
REAL f1081; 
REAL f1082; 
REAL f1083; 
REAL f1084; 
REAL f1085; 
REAL f1086; 
REAL f1087; 
REAL f1088; 
REAL f1089; 
REAL f1090; 
REAL f1091; 
REAL f1092; 
REAL f1093; 
REAL f1094; 
REAL f1095; 
REAL f1096; 
REAL f1097; 
REAL f1098; 
REAL f1099; 
REAL f1100; 
REAL f1101; 
REAL f1102; 
REAL f1103; 
REAL f1104; 
REAL f1105; 
REAL f1106; 
REAL f1107; 
REAL f1108; 
REAL f1109; 
REAL f1110; 
REAL f1111; 
REAL f1112; 
REAL f1113; 
REAL f1114; 
REAL f1115; 
REAL f1116; 
REAL f1117; 
REAL f1118; 
REAL f1119; 
REAL f1120; 
REAL f1121; 
REAL f1122; 
REAL f1123; 
REAL f1124; 
REAL f1125; 
REAL f1126; 
REAL f1127; 
REAL f1128; 
REAL f1129; 
REAL f1130; 
REAL f1131; 
REAL f1132; 
REAL f1133; 
REAL f1134; 
REAL f1135; 
REAL f1136; 
REAL f1137; 
REAL f1138; 
REAL f1139; 
REAL f1140; 
REAL f1141; 
REAL f1142; 
REAL f1143; 
REAL f1144; 
REAL f1145; 
REAL f1146; 
REAL f1147; 
REAL f1148; 
REAL f1149; 
REAL f1150; 
REAL f1151; 
REAL f1152; 
REAL f1153; 
REAL f1154; 
REAL f1155; 
REAL f1156; 
REAL f1157; 
REAL f1158; 
REAL f1159; 
REAL f1160; 
REAL f1161; 
REAL f1162; 
REAL f1163; 
REAL f1164; 
REAL f1165; 
REAL f1166; 
REAL f1167; 
REAL f1168; 
REAL f1169; 
REAL f1170; 
REAL f1171; 
REAL f1172; 
REAL f1173; 
REAL f1174; 
REAL f1175; 
REAL f1176; 
REAL f1177; 
REAL f1178; 
REAL f1179; 
REAL f1180; 
REAL f1181; 
REAL f1182; 
REAL f1183; 
REAL f1184; 
REAL f1185; 
REAL f1186; 
REAL f1187; 
REAL f1188; 
REAL f1189; 
REAL f1190; 
REAL f1191; 
REAL f1192; 
REAL f1193; 
REAL f1194; 
REAL f1195; 
REAL f1196; 
REAL f1197; 
REAL f1198; 
REAL f1199; 
REAL f1200; 
REAL f1201; 
REAL f1202; 
REAL f1203; 
REAL f1204; 
REAL f1205; 
REAL f1206; 
REAL f1207; 
REAL f1208; 
REAL f1209; 
REAL f1210; 
REAL f1211; 
REAL f1212; 
REAL f1213; 
REAL f1214; 
REAL f1215; 
REAL f1216; 
REAL f1217; 
REAL f1218; 
REAL f1219; 
REAL f1220; 
REAL f1221; 
REAL f1222; 
REAL f1223; 
REAL f1224; 
REAL f1225; 
REAL f1226; 
REAL f1227; 
REAL f1228; 
REAL f1229; 
REAL f1230; 
REAL f1231; 
REAL f1232; 
REAL f1233; 
REAL f1234; 
REAL f1235; 
REAL f1236; 
REAL f1237; 
REAL f1238; 
REAL f1239; 
REAL f1240; 
REAL f1241; 
REAL f1242; 
REAL f1243; 
REAL f1244; 
REAL f1245; 
REAL f1246; 
REAL f1247; 
REAL f1248; 
REAL f1249; 
REAL f1250; 
REAL f1251; 
REAL f1252; 
REAL f1253; 
REAL f1254; 
REAL f1255; 
REAL f1256; 
REAL f1257; 
REAL f1258; 
REAL f1259; 
REAL f1260; 
REAL f1261; 
REAL f1262; 
REAL f1263; 
REAL f1264; 
REAL f1265; 
REAL f1266; 
REAL f1267; 
REAL f1268; 
REAL f1269; 
REAL f1270; 
REAL f1271; 
REAL f1272; 
REAL f1273; 
REAL f1274; 
REAL f1275; 
REAL f1276; 
REAL f1277; 
REAL f1278; 
REAL f1279; 
REAL f1280; 
REAL f1281; 
REAL f1282; 
REAL f1283; 
REAL f1284; 
REAL f1285; 
REAL f1286; 
REAL f1287; 
REAL f1288; 
REAL f1289; 
REAL f1290; 
REAL f1291; 
REAL f1292; 
REAL f1293; 
REAL f1294; 
REAL f1295; 
REAL f1296; 
REAL f1297; 
REAL f1298; 
REAL f1299; 
REAL f1300; 
REAL f1301; 
REAL f1302; 
REAL f1303; 
REAL f1304; 
REAL f1305; 
REAL f1306; 
REAL f1307; 
REAL f1308; 
REAL f1309; 
REAL f1310; 
REAL f1311; 
REAL f1312; 
REAL f1313; 
REAL f1314; 
REAL f1315; 
REAL f1316; 
REAL f1317; 
REAL f1318; 
REAL f1319; 
REAL f1320; 
REAL f1321; 
REAL f1322; 
REAL f1323; 
REAL f1324; 
REAL f1325; 
REAL f1326; 
REAL f1327; 
REAL f1328; 
REAL f1329; 
REAL f1330; 
REAL f1331; 
REAL f1332; 
REAL f1333; 
REAL f1334; 
REAL f1335; 
REAL f1336; 
REAL f1337; 
REAL f1338; 
REAL f1339; 
REAL f1340; 
REAL f1341; 
REAL f1342; 
REAL f1343; 
REAL f1344; 
REAL f1345; 
REAL f1346; 
REAL f1347; 
REAL f1348; 
REAL f1349; 
REAL f1350; 
REAL f1351; 
REAL f1352; 
REAL f1353; 
REAL f1354; 
REAL f1355; 
REAL f1356; 
REAL f1357; 
REAL f1358; 
REAL f1359; 
REAL f1360; 
REAL f1361; 
REAL f1362; 
REAL f1363; 
REAL f1364; 
REAL f1365; 
REAL f1366; 
REAL f1367; 
REAL f1368; 
REAL f1369; 
REAL f1370; 
REAL f1371; 
REAL f1372; 
REAL f1373; 
REAL f1374; 
REAL f1375; 
REAL f1376; 
REAL f1377; 
REAL f1378; 
REAL f1379; 
REAL f1380; 
REAL f1381; 
REAL f1382; 
REAL f1383; 
REAL f1384; 
REAL f1385; 
REAL f1386; 
REAL f1387; 
REAL f1388; 
REAL f1389; 
REAL f1390; 
REAL f1391; 
REAL f1392; 
REAL f1393; 
REAL f1394; 
REAL f1395; 
REAL f1396; 
REAL f1397; 
REAL f1398; 
REAL f1399; 
REAL f1400;   
END;


//online::ii::bigdata::ar_leye__x26_y34_withnormalization
//input_data_tmp := DATASET('~online::ii::bigdata::ar_leye__x26_y34_withoutnormalization', value_record, CSV); //2600x884
//input_data_tmp := DATASET('~bigdata::ii::thesis::ar_1400samples_leye_x26_y34_normalized', value_record, CSV); 
input_data_tmp := DATASET('~thesis::ii::bigdata::data_pubfig_speech100samples', value_record, CSV); 
ML.AppendID(input_data_tmp, id, input_data);
OUTPUT(input_data(id < 99), NAMED ('input_data'));

ML.ToField(input_data, indepDataC);
OUTPUT(indepDataC, NAMED('indepDataC'));

//Centroids Random Generation

minimum := MIN(indepDataC,indepDataC.value)+2;
maximum:= MAX(indepDataC,indepDataC.value)/2;
K := 8;
dCentroids := ML.Types.FromMatrix($.RandMatR(K,1440,minimum,maximum));

OUTPUT(dCentroids, NAMED('dCentroids'));
/*
## First Task Experiment
- Experiment 1
 Sample #:           2600
 Iteration #:        50
 Centroid # :         12
Total Thor Time: 5:37:27.831
Convergence: 50 iteration out of 50

- Experiment 2
 Sample #:           2600
 Iteration #:        50
 Centroid # :         12
Total Thor Time: 1:29:38.584
Convergence: 18 iteration out of 50
----------------------------------------------------------------
- Experiment ar_1400samples_leye_x26_y34_normalized
 Sample #:           1400
 Iteration #:        50
 Centroid # :         12
Total Thor Time: 
Convergence:  iteration out of 50



*/
//Kmeans Training
//MyKMeans:=ML.Cluster.KMeans(indepDataC,dCentroids,30,.3);
MyKMeans:=ML.Cluster.KMeans(indepDataC,dCentroids,5,.0003);
//Results
MyKMeans.AllResults;

MyKMeans.Convergence;

MyKMeans.Result();
OUTPUT(MyKMeans.Result(),, '~online::ii::bigdata::extractedkmeansweight_speech', OVERWRITE, CSV);

MyKMeans.Delta(0);

MyKMeans.DistanceDelta(0);
