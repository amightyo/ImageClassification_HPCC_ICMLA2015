﻿/**
 * @Author Itauma Itauma
 * @date   June, 2015
 */
 
//EXPORT KmeansAR := 'todo';
//EXPORT KmeansCaltech101 := 'todo';
//EXPORT KmeansExplore := 'todo';
IMPORT ML;
IMPORT $;


//Input Data       

value_record := RECORD
REAL F1;
REAL F2;
REAL F3;
REAL F4;
REAL F5;
REAL F6;
REAL F7;
REAL F8;
REAL F9;
REAL F10;
REAL F11;
REAL F12;
REAL F13;
REAL F14;
REAL F15;
REAL F16;
REAL F17;
REAL F18;
REAL F19;
REAL F20;
REAL F21;
REAL F22;
REAL F23;
REAL F24;
REAL F25;
REAL F26;
REAL F27;
REAL F28;
REAL F29;
REAL F30;
REAL F31;
REAL F32;
REAL F33;
REAL F34;
REAL F35;
REAL F36;
REAL F37;
REAL F38;
REAL F39;
REAL F40;
REAL F41;
REAL F42;
REAL F43;
REAL F44;
REAL F45;
REAL F46;
REAL F47;
REAL F48;
REAL F49;
REAL F50;
REAL F51;
REAL F52;
REAL F53;
REAL F54;
REAL F55;
REAL F56;
REAL F57;
REAL F58;
REAL F59;
REAL F60;
REAL F61;
REAL F62;
REAL F63;
REAL F64;
REAL F65;
REAL F66;
REAL F67;
REAL F68;
REAL F69;
REAL F70;
REAL F71;
REAL F72;
REAL F73;
REAL F74;
REAL F75;
REAL F76;
REAL F77;
REAL F78;
REAL F79;
REAL F80;
REAL F81;
REAL F82;
REAL F83;
REAL F84;
REAL F85;
REAL F86;
REAL F87;
REAL F88;
REAL F89;
REAL F90;
REAL F91;
REAL F92;
REAL F93;
REAL F94;
REAL F95;
REAL F96;
REAL F97;
REAL F98;
REAL F99;
REAL F100;
REAL F101;
REAL F102;
REAL F103;
REAL F104;
REAL F105;
REAL F106;
REAL F107;
REAL F108;
REAL F109;
REAL F110;
REAL F111;
REAL F112;
REAL F113;
REAL F114;
REAL F115;
REAL F116;
REAL F117;
REAL F118;
REAL F119;
REAL F120;
REAL F121;
REAL F122;
REAL F123;
REAL F124;
REAL F125;
REAL F126;
REAL F127;
REAL F128;
REAL F129;
REAL F130;
REAL F131;
REAL F132;
REAL F133;
REAL F134;
REAL F135;
REAL F136;
REAL F137;
REAL F138;
REAL F139;
REAL F140;
REAL F141;
REAL F142;
REAL F143;
REAL F144;
REAL F145;
REAL F146;
REAL F147;
REAL F148;
REAL F149;
REAL F150;
REAL F151;
REAL F152;
REAL F153;
REAL F154;
REAL F155;
REAL F156;
REAL F157;
REAL F158;
REAL F159;
REAL F160;
REAL F161;
REAL F162;
REAL F163;
REAL F164;
REAL F165;
REAL F166;
REAL F167;
REAL F168;
REAL F169;
REAL F170;
REAL F171;
REAL F172;
REAL F173;
REAL F174;
REAL F175;
REAL F176;
REAL F177;
REAL F178;
REAL F179;
REAL F180;
REAL F181;
REAL F182;
REAL F183;
REAL F184;
REAL F185;
REAL F186;
REAL F187;
REAL F188;
REAL F189;
REAL F190;
REAL F191;
REAL F192;
REAL F193;
REAL F194;
REAL F195;
REAL F196;
REAL F197;
REAL F198;
REAL F199;
REAL F200;
REAL F201;
REAL F202;
REAL F203;
REAL F204;
REAL F205;
REAL F206;
REAL F207;
REAL F208;
REAL F209;
REAL F210;
REAL F211;
REAL F212;
REAL F213;
REAL F214;
REAL F215;
REAL F216;
REAL F217;
REAL F218;
REAL F219;
REAL F220;
REAL F221;
REAL F222;
REAL F223;
REAL F224;
REAL F225;
REAL F226;
REAL F227;
REAL F228;
REAL F229;
REAL F230;
REAL F231;
REAL F232;
REAL F233;
REAL F234;
REAL F235;
REAL F236;
REAL F237;
REAL F238;
REAL F239;
REAL F240;
REAL F241;
REAL F242;
REAL F243;
REAL F244;
REAL F245;
REAL F246;
REAL F247;
REAL F248;
REAL F249;
REAL F250;
REAL F251;
REAL F252;
REAL F253;
REAL F254;
REAL F255;
REAL F256;
REAL F257;
REAL F258;
REAL F259;
REAL F260;
REAL F261;
REAL F262;
REAL F263;
REAL F264;
REAL F265;
REAL F266;
REAL F267;
REAL F268;
REAL F269;
REAL F270;
REAL F271;
REAL F272;
REAL F273;
REAL F274;
REAL F275;
REAL F276;
REAL F277;
REAL F278;
REAL F279;
REAL F280;
REAL F281;
REAL F282;
REAL F283;
REAL F284;
REAL F285;
REAL F286;
REAL F287;
REAL F288;
REAL F289;
REAL F290;
REAL F291;
REAL F292;
REAL F293;
REAL F294;
REAL F295;
REAL F296;
REAL F297;
REAL F298;
REAL F299;
REAL F300;
REAL F301;
REAL F302;
REAL F303;
REAL F304;
REAL F305;
REAL F306;
REAL F307;
REAL F308;
REAL F309;
REAL F310;
REAL F311;
REAL F312;
REAL F313;
REAL F314;
REAL F315;
REAL F316;
REAL F317;
REAL F318;
REAL F319;
REAL F320;
REAL F321;
REAL F322;
REAL F323;
REAL F324;
REAL F325;
REAL F326;
REAL F327;
REAL F328;
REAL F329;
REAL F330;
REAL F331;
REAL F332;
REAL F333;
REAL F334;
REAL F335;
REAL F336;
REAL F337;
REAL F338;
REAL F339;
REAL F340;
REAL F341;
REAL F342;
REAL F343;
REAL F344;
REAL F345;
REAL F346;
REAL F347;
REAL F348;
REAL F349;
REAL F350;
REAL F351;
REAL F352;
REAL F353;
REAL F354;
REAL F355;
REAL F356;
REAL F357;
REAL F358;
REAL F359;
REAL F360;
REAL F361;
REAL F362;
REAL F363;
REAL F364;
REAL F365;
REAL F366;
REAL F367;
REAL F368;
REAL F369;
REAL F370;
REAL F371;
REAL F372;
REAL F373;
REAL F374;
REAL F375;
REAL F376;
REAL F377;
REAL F378;
REAL F379;
REAL F380;
REAL F381;
REAL F382;
REAL F383;
REAL F384;
REAL F385;
REAL F386;
REAL F387;
REAL F388;
REAL F389;
REAL F390;
REAL F391;
REAL F392;
REAL F393;
REAL F394;
REAL F395;
REAL F396;
REAL F397;
REAL F398;
REAL F399;
REAL F400;
REAL F401;
REAL F402;
REAL F403;
REAL F404;
REAL F405;
REAL F406;
REAL F407;
REAL F408;
REAL F409;
REAL F410;
REAL F411;
REAL F412;
REAL F413;
REAL F414;
REAL F415;
REAL F416;
REAL F417;
REAL F418;
REAL F419;
REAL F420;
REAL F421;
REAL F422;
REAL F423;
REAL F424;
REAL F425;
REAL F426;
REAL F427;
REAL F428;
REAL F429;
REAL F430;
REAL F431;
REAL F432;
REAL F433;
REAL F434;
REAL F435;
REAL F436;
REAL F437;
REAL F438;
REAL F439;
REAL F440;
REAL F441;
REAL F442;
REAL F443;
REAL F444;
REAL F445;
REAL F446;
REAL F447;
REAL F448;
REAL F449;
REAL F450;
REAL F451;
REAL F452;
REAL F453;
REAL F454;
REAL F455;
REAL F456;
REAL F457;
REAL F458;
REAL F459;
REAL F460;
REAL F461;
REAL F462;
REAL F463;
REAL F464;
REAL F465;
REAL F466;
REAL F467;
REAL F468;
REAL F469;
REAL F470;
REAL F471;
REAL F472;
REAL F473;
REAL F474;
REAL F475;
REAL F476;
REAL F477;
REAL F478;
REAL F479;
REAL F480;
REAL F481;
REAL F482;
REAL F483;
REAL F484;
REAL F485;
REAL F486;
REAL F487;
REAL F488;
REAL F489;
REAL F490;
REAL F491;
REAL F492;
REAL F493;
REAL F494;
REAL F495;
REAL F496;
REAL F497;
REAL F498;
REAL F499;
REAL F500;
REAL F501;
REAL F502;
REAL F503;
REAL F504;
REAL F505;
REAL F506;
REAL F507;
REAL F508;
REAL F509;
REAL F510;
REAL F511;
REAL F512;
REAL F513;
REAL F514;
REAL F515;
REAL F516;
REAL F517;
REAL F518;
REAL F519;
REAL F520;
REAL F521;
REAL F522;
REAL F523;
REAL F524;
REAL F525;
REAL F526;
REAL F527;
REAL F528;
REAL F529;
REAL F530;
REAL F531;
REAL F532;
REAL F533;
REAL F534;
REAL F535;
REAL F536;
REAL F537;
REAL F538;
REAL F539;
REAL F540;
REAL F541;
REAL F542;
REAL F543;
REAL F544;
REAL F545;
REAL F546;
REAL F547;
REAL F548;
REAL F549;
REAL F550;
REAL F551;
REAL F552;
REAL F553;
REAL F554;
REAL F555;
REAL F556;
REAL F557;
REAL F558;
REAL F559;
REAL F560;
REAL F561;
REAL F562;
REAL F563;
REAL F564;
REAL F565;
REAL F566;
REAL F567;
REAL F568;
REAL F569;
REAL F570;
REAL F571;
REAL F572;
REAL F573;
REAL F574;
REAL F575;
REAL F576;
REAL F577;
REAL F578;
REAL F579;
REAL F580;
REAL F581;
REAL F582;
REAL F583;
REAL F584;
REAL F585;
REAL F586;
REAL F587;
REAL F588;
REAL F589;
REAL F590;
REAL F591;
REAL F592;
REAL F593;
REAL F594;
REAL F595;
REAL F596;
REAL F597;
REAL F598;
REAL F599;
REAL F600;
REAL F601;
REAL F602;
REAL F603;
REAL F604;
REAL F605;
REAL F606;
REAL F607;
REAL F608;
REAL F609;
REAL F610;
REAL F611;
REAL F612;
REAL F613;
REAL F614;
REAL F615;
REAL F616;
REAL F617;
REAL F618;
REAL F619;
REAL F620;
REAL F621;
REAL F622;
REAL F623;
REAL F624;
REAL F625;
REAL F626;
REAL F627;
REAL F628;
REAL F629;
REAL F630;
REAL F631;
REAL F632;
REAL F633;
REAL F634;
REAL F635;
REAL F636;
REAL F637;
REAL F638;
REAL F639;
REAL F640;
REAL F641;
REAL F642;
REAL F643;
REAL F644;
REAL F645;
REAL F646;
REAL F647;
REAL F648;
REAL F649;
REAL F650;
REAL F651;
REAL F652;
REAL F653;
REAL F654;
REAL F655;
REAL F656;
REAL F657;
REAL F658;
REAL F659;
REAL F660;
REAL F661;
REAL F662;
REAL F663;
REAL F664;
REAL F665;
REAL F666;
REAL F667;
REAL F668;
REAL F669;
REAL F670;
REAL F671;
REAL F672;
REAL F673;
REAL F674;
REAL F675;
REAL F676;
REAL F677;
REAL F678;
REAL F679;
REAL F680;
REAL F681;
REAL F682;
REAL F683;
REAL F684;
REAL F685;
REAL F686;
REAL F687;
REAL F688;
REAL F689;
REAL F690;
REAL F691;
REAL F692;
REAL F693;
REAL F694;
REAL F695;
REAL F696;
REAL F697;
REAL F698;
REAL F699;
REAL F700;
REAL F701;
REAL F702;
REAL F703;
REAL F704;
REAL F705;
REAL F706;
REAL F707;
REAL F708;
REAL F709;
REAL F710;
REAL F711;
REAL F712;
REAL F713;
REAL F714;
REAL F715;
REAL F716;
REAL F717;
REAL F718;
REAL F719;
REAL F720;
REAL F721;
REAL F722;
REAL F723;
REAL F724;
REAL F725;
REAL F726;
REAL F727;
REAL F728;
REAL F729;
REAL F730;
REAL F731;
REAL F732;
REAL F733;
REAL F734;
REAL F735;
REAL F736;
REAL F737;
REAL F738;
REAL F739;
REAL F740;
REAL F741;
REAL F742;
REAL F743;
REAL F744;
REAL F745;
REAL F746;
REAL F747;
REAL F748;
REAL F749;
REAL F750;
REAL F751;
REAL F752;
REAL F753;
REAL F754;
REAL F755;
REAL F756;
REAL F757;
REAL F758;
REAL F759;
REAL F760;
REAL F761;
REAL F762;
REAL F763;
REAL F764;
REAL F765;
REAL F766;
REAL F767;
REAL F768;
REAL F769;
REAL F770;
REAL F771;
REAL F772;
REAL F773;
REAL F774;
REAL F775;
REAL F776;
REAL F777;
REAL F778;
REAL F779;
REAL F780;
REAL F781;
REAL F782;
REAL F783;
REAL F784;
REAL F785;
REAL F786;
REAL F787;
REAL F788;
REAL F789;
REAL F790;
REAL F791;
REAL F792;
REAL F793;
REAL F794;
REAL F795;
REAL F796;
REAL F797;
REAL F798;
REAL F799;
REAL F800;
REAL F801;
REAL F802;
REAL F803;
REAL F804;
REAL F805;
REAL F806;
REAL F807;
REAL F808;
REAL F809;
REAL F810;
REAL F811;
REAL F812;
REAL F813;
REAL F814;
REAL F815;
REAL F816;
REAL F817;
REAL F818;
REAL F819;
REAL F820;
REAL F821;
REAL F822;
REAL F823;
REAL F824;
REAL F825;
REAL F826;
REAL F827;
REAL F828;
REAL F829;
REAL F830;
REAL F831;
REAL F832;
REAL F833;
REAL F834;
REAL F835;
REAL F836;
REAL F837;
REAL F838;
REAL F839;
REAL F840;
REAL F841;
REAL F842;
REAL F843;
REAL F844;
REAL F845;
REAL F846;
REAL F847;
REAL F848;
REAL F849;
REAL F850;
REAL F851;
REAL F852;
REAL F853;
REAL F854;
REAL F855;
REAL F856;
REAL F857;
REAL F858;
REAL F859;
REAL F860;
REAL F861;
REAL F862;
REAL F863;
REAL F864;
REAL F865;
REAL F866;
REAL F867;
REAL F868;
REAL F869;
REAL F870;
REAL F871;
REAL F872;
REAL F873;
REAL F874;
REAL F875;
REAL F876;
REAL F877;
REAL F878;
REAL F879;
REAL F880;
REAL F881;
REAL F882;
REAL F883;
REAL F884;
REAL F885;
REAL F886;
REAL F887;
REAL F888;
REAL F889;
REAL F890;
REAL F891;
REAL F892;
REAL F893;
REAL F894;
REAL F895;
REAL F896;
REAL F897;
REAL F898;
REAL F899;
REAL F900;
REAL F901;
REAL F902;
REAL F903;
REAL F904;
REAL F905;
REAL F906;
REAL F907;
REAL F908;
REAL F909;
REAL F910;
REAL F911;
REAL F912;
END;


input_data_tmp := DATASET('~thesis::ii::bigdata::people_mouth_1000samples_x24_y38_normalized', value_record, CSV); 

ML.AppendID(input_data_tmp, id, input_data);
OUTPUT(input_data(id < 99), NAMED ('input_data'));

ML.ToField(input_data, indepDataC);
OUTPUT(indepDataC, NAMED('indepDataC'));

//Centroids Random Generation

minimum := MIN(indepDataC,indepDataC.value)+2;
maximum:= MAX(indepDataC,indepDataC.value)/2;
K := 16;
dCentroids := ML.Types.FromMatrix($.RandMatR(K,912,minimum,maximum));

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
 Sample #:           1000
 Iteration #:        50
 Centroid # :         16
Total Cluster Time: 44:04.030
Convergence: 20 iteration out of 50



*/
//Kmeans Training
//MyKMeans:=ML.Cluster.KMeans(indepDataC,dCentroids,30,.3);
MyKMeans:=ML.Cluster.KMeans(indepDataC,dCentroids,50,.0003);
//Results
MyKMeans.AllResults;

MyKMeans.Convergence;

MyKMeans.Result();
OUTPUT(MyKMeans.Result(),, '~online::ii::bigdata::extractedkmeansweightmouth', OVERWRITE, CSV);

MyKMeans.Delta(0);

MyKMeans.DistanceDelta(0);
