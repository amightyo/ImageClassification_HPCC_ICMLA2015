/**
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
END;


input_data_tmp := DATASET('~thesis::ii::bigdata::people_leye_1000samples_x16_y26_normalized', value_record, CSV); 

ML.AppendID(input_data_tmp, id, input_data);
OUTPUT(input_data(id < 99), NAMED ('input_data'));

ML.ToField(input_data, indepDataC);
OUTPUT(indepDataC, NAMED('indepDataC'));

//Centroids Random Generation

minimum := MIN(indepDataC,indepDataC.value)+2;
maximum:= MAX(indepDataC,indepDataC.value)/2;
K := 16;
dCentroids := ML.Types.FromMatrix($.RandMatR(K,416,minimum,maximum));

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
- Experiment 
 Sample #:           1000
 Iteration #:        50
 Centroid # :         16
Total Cluster Time: 11:48.894
Convergence: 21 iteration out of 50



*/
//Kmeans Training
//MyKMeans:=ML.Cluster.KMeans(indepDataC,dCentroids,30,.3);
MyKMeans:=ML.Cluster.KMeans(indepDataC,dCentroids,50,.0003);
//Results
MyKMeans.AllResults;

MyKMeans.Convergence;

MyKMeans.Result();
OUTPUT(MyKMeans.Result(),, '~online::ii::bigdata::extractedkmeansweightleye', OVERWRITE, CSV);

MyKMeans.Delta(0);

MyKMeans.DistanceDelta(0);
