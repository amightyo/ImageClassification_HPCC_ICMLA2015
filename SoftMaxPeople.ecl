/**
 * @Author Itauma Itauma
 * @date   June, 2015
 */
 
IMPORT * FROM ML;
IMPORT * FROM $;

//Set Parameters
LoopNum := 1000; // Number of iterations in softmax algortihm
LAMBDA := 0.0001; // weight decay parameter in  claculation of SoftMax Cost fucntion
ALPHA := 0.1; // //Learning Rate for updating SoftMax parameters

//input data
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
INTEGER Label;
END;
input_data_tmp := DATASET('~thesis::ii::bigdata::peopletest2', value_record, CSV);
ML.AppendID(input_data_tmp, id, input_data);
OUTPUT  (input_data, NAMED ('input_data'));
//convert input data to two datset: samples dataset and labels dataset
Sampledata_Format := RECORD
input_data.id;
input_data.f1	;
input_data.f2	;
input_data.f3	;
input_data.f4	;
input_data.f5	;
input_data.f6	;
input_data.f7	;
input_data.f8	;
input_data.f9	;
input_data.f10	;
input_data.f11	;
input_data.f12	;
input_data.f13	;
input_data.f14	;
input_data.f15	;
input_data.f16	;
input_data.f17	;
input_data.f18	;
input_data.f19	;
input_data.f20	;
input_data.f21	;
input_data.f22	;
input_data.f23	;
input_data.f24	;
input_data.f25	;
input_data.f26	;
input_data.f27	;
input_data.f28	;
input_data.f29	;
input_data.f30	;
input_data.f31	;
input_data.f32	;
input_data.f33	;
input_data.f34	;
input_data.f35	;
input_data.f36	;
input_data.f37	;
input_data.f38	;
input_data.f39	;
input_data.f40	;
input_data.f41	;
input_data.f42	;
input_data.f43	;
input_data.f44	;
input_data.f45	;
input_data.f46	;
input_data.f47	;
input_data.f48	;
input_data.f49	;
input_data.f50	;
input_data.f51	;
input_data.f52	;
input_data.f53	;
input_data.f54	;
input_data.f55	;
input_data.f56	;
input_data.f57	;
input_data.f58	;
input_data.f59	;
input_data.f60	;
input_data.f61	;
input_data.f62	;
input_data.f63	;
input_data.f64	;
input_data.f65	;
END;

sample_table := TABLE(input_data,Sampledata_Format);
OUTPUT  (sample_table, NAMED ('sample_table'));

labeldata_Format := RECORD
  input_data.id;
  input_data.label;
END;

label_table := TABLE(input_data,labeldata_Format);
OUTPUT  (label_table, NAMED ('label_table'));

ML.ToField(sample_table, indepDataC);
OUTPUT  (indepDataC, NAMED ('indepDataC'));
ML.ToField(label_table, depDataC);
OUTPUT  (depDataC, NAMED ('depDataC'));
label := PROJECT(depDataC,Types.DiscreteField);
OUTPUT  (label, NAMED ('label'));

//initialize THETA
Numclass := MAX (label, label.value);
OUTPUT  (Numclass, NAMED ('Numclass'));
InputSize := MAX (indepDataC,indepDataC.number);
OUTPUT  (InputSize, NAMED ('InputSize'));
T1 := Mat.RandMat (Numclass,InputSize+1);
OUTPUT  (T1, NAMED ('T1'));
IntTHETA := Mat.Scale (T1,0.005);
OUTPUT  (IntTHETA, NAMED ('IntTHETA'));
//SoftMax_Sparse Classfier
UNSIGNED4 prows:=0;
UNSIGNED4 pcols:=0;
UNSIGNED4 Maxrows:=0;
UNSIGNED4 Maxcols:=0;
trainer:= ML.Classify.SoftMax(IntTHETA, LAMBDA, ALPHA, LoopNum);

//Learning Phase
Parameters := trainer.LearnC(indepDataC, label);
OUTPUT  (Parameters, NAMED ('Parameters'));
mod := trainer.Model(Parameters);
mXstats := ML.Mat.Has(Mod).Stats;
mX_n := mXstats.XMax;
mX_m := mXstats.YMax;
OUTPUT  (mX_n, ALL, NAMED ('mX_n'));
OUTPUT  (mX_m, ALL, NAMED ('mX_m'));
//test phase
Model := Parameters;
dist := trainer.ClassProbDistribC(indepDataC,Model );
classified := trainer.ClassifyC(indepDataC,Model);
OUTPUT  (dist, NAMED ('dist'));
OUTPUT  (classified, NAMED ('classified'));
//Comparing to Original
compare1 := ML.Classify.Compare(label, classified);
OUTPUT(compare1.CrossAssignments,ALL);  //CrossAssignment results


//Computing the accuracy of all the classes
//OUTPUT(compare1.CrossAssignments,, '~online::ii::bigdata::crossassignments', OVERWRITE, CSV);

//Append unique ID to crossAssignments
ML.AppendID(compare1.CrossAssignments, id, crossAssignments);
OUTPUT(crossAssignments, NAMED ('crossAssignments')); //A dataset of crossAssignments

diagVec := crossAssignments(c_actual = c_modeled);
//diagVec;
totalAccuratePrediction := SUM(diagVec,cnt);
totalSamples := SUM(crossAssignments,cnt);
accuracy := (totalAccuratePrediction / totalSamples)*100;
OUTPUT(accuracy, NAMED('Accuracy'));