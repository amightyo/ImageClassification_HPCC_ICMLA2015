/**
 * @Author Itauma Itauma
 * @date   June, 2015
 */
 
//EXPORT multimodalDecisionTree := 'todo';
//EXPORT SpeechDecisionTree := 'todo';

IMPORT * FROM ML;
IMPORT * FROM $;
IMPORT PBblas;
Layout_Cell := PBblas.Types.Layout_Cell;

//Train and Test data layout
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
INTEGER Label;
END;
//test_data_tmp := DATASET('~thesis::ii::bigdata::artrain', value_record, CSV);
//train_data_tmp := DATASET('~thesis::ii::bigdata::artest', value_record, CSV);
train_data_tmp := DATASET('~thesis::ii::bigdata::supervised_people_train', value_record, CSV);
test_data_tmp := DATASET('~thesis::ii::bigdata::supervised_people_test', value_record, CSV);
//supervised_speechdata
//Train
ML.AppendID(train_data_tmp, id, train_data);
OUTPUT  (train_data, NAMED ('train_data'));

//Test
ML.AppendID(test_data_tmp, id, test_data);
OUTPUT  (test_data, NAMED ('test_data'));

//convert train data to two datset: samples dataset and labels dataset
Traindata_Format := RECORD
train_data.id;
train_data.f1	;
train_data.f2	;
train_data.f3	;
train_data.f4	;
train_data.f5	;
train_data.f6	;
train_data.f7	;
train_data.f8	;
train_data.f9	;
train_data.f10	;
train_data.f11	;
train_data.f12	;
train_data.f13	;
train_data.f14	;
train_data.f15	;
train_data.f16	;
train_data.f17	;
train_data.f18	;
train_data.f19	;
train_data.f20	;
train_data.f21	;
train_data.f22	;
train_data.f23	;
train_data.f24	;
train_data.f25	;
train_data.f26	;
train_data.f27	;
train_data.f28	;
train_data.f29	;
train_data.f30	;
train_data.f31	;
train_data.f32	;
train_data.f33	;
train_data.f34	;
train_data.f35	;
train_data.f36	;
train_data.f37	;
train_data.f38	;
train_data.f39	;
train_data.f40	;
train_data.f41	;
train_data.f42	;
train_data.f43	;
train_data.f44	;
train_data.f45	;
train_data.f46	;
train_data.f47	;
train_data.f48	;
train_data.f49	;
train_data.f50	;
train_data.f51	;
train_data.f52	;
train_data.f53	;
train_data.f54	;
train_data.f55	;
train_data.f56	;
train_data.f57	;
train_data.f58	;
train_data.f59	;
train_data.f60	;
train_data.f61	;
train_data.f62	;
train_data.f63	;
train_data.f64	;
train_data.f65	;
train_data.f66	;
train_data.f67	;
train_data.f68	;
train_data.f69	;
train_data.f70	;
train_data.f71	;
train_data.f72	;
train_data.f73	;
train_data.f74	;
train_data.f75	;
train_data.f76	;
train_data.f77	;
train_data.f78	;
train_data.f79	;
train_data.f80	;
train_data.f81	;
END;

train_table := TABLE(train_data,Traindata_Format);
OUTPUT  (train_table, NAMED ('train_table'));

labelTraindata_Format := RECORD
  train_data.id;
  train_data.label;
END;

trainlabel_table := TABLE(train_data,labelTraindata_Format);
OUTPUT  (trainlabel_table, NAMED ('trainlabel_table'));

ML.ToField(train_table, indepTrainDataC);
OUTPUT  (indepTrainDataC, NAMED ('indepTrainDataC'));
ML.ToField(trainlabel_table, depTrainDataC);
OUTPUT  (depTrainDataC, NAMED ('depTrainDataC'));
trainlabel := PROJECT(depTrainDataC,Types.DiscreteField);
OUTPUT  (trainlabel, NAMED ('Trainlabel'));

//convert test data to two datset: samples dataset and labels dataset
testdata_Format := RECORD
test_data.id;
test_data.f1	;
test_data.f2	;
test_data.f3	;
test_data.f4	;
test_data.f5	;
test_data.f6	;
test_data.f7	;
test_data.f8	;
test_data.f9	;
test_data.f10	;
test_data.f11	;
test_data.f12	;
test_data.f13	;
test_data.f14	;
test_data.f15	;
test_data.f16	;
test_data.f17	;
test_data.f18	;
test_data.f19	;
test_data.f20	;
test_data.f21	;
test_data.f22	;
test_data.f23	;
test_data.f24	;
test_data.f25	;
test_data.f26	;
test_data.f27	;
test_data.f28	;
test_data.f29	;
test_data.f30	;
test_data.f31	;
test_data.f32	;
test_data.f33	;
test_data.f34	;
test_data.f35	;
test_data.f36	;
test_data.f37	;
test_data.f38	;
test_data.f39	;
test_data.f40	;
test_data.f41	;
test_data.f42	;
test_data.f43	;
test_data.f44	;
test_data.f45	;
test_data.f46	;
test_data.f47	;
test_data.f48	;
test_data.f49	;
test_data.f50	;
test_data.f51	;
test_data.f52	;
test_data.f53	;
test_data.f54	;
test_data.f55	;
test_data.f56	;
test_data.f57	;
test_data.f58	;
test_data.f59	;
test_data.f60	;
test_data.f61	;
test_data.f62	;
test_data.f63	;
test_data.f64	;
test_data.f65	;
test_data.f66	;
test_data.f67	;
test_data.f68	;
test_data.f69	;
test_data.f70	;
test_data.f71	;
test_data.f72	;
test_data.f73	;
test_data.f74	;
test_data.f75	;
test_data.f76	;
test_data.f77	;
test_data.f78	;
test_data.f79	;
test_data.f80	;
test_data.f81	;
END;

test_table := TABLE(test_data,testdata_Format);
OUTPUT  (test_table, NAMED ('test_table'));

labeltestdata_Format := RECORD
  test_data.id;
  test_data.label;
END;

testlabel_table := TABLE(test_data,labeltestdata_Format);
OUTPUT  (testlabel_table, NAMED ('testlabel_table'));

ML.ToField(test_table, indeptestDataC);
OUTPUT  (indeptestDataC, NAMED ('indeptestDataC'));
ML.ToField(testlabel_table, deptestDataC);
OUTPUT  (deptestDataC, NAMED ('deptestDataC'));
testlabel := PROJECT(deptestDataC,Types.DiscreteField);
OUTPUT  (testlabel, NAMED ('testlabel'));


//Decision Tree Classification
//Learning Phase
MinNumObj := 2;
MaxLevel := 20;   //Decision Tree parameters
learner1 := ML.Classify.DecisionTree.C45binary(MinNumObj, MaxLevel);
dtModel := learner1.LearnC(indepTrainDataC, trainlabel);  //Decision Tree Model 
//Classification Phase
results1 := learner1.ClassifyC(indepTestDataC,dtModel);
//Comparing to Original
compare1 := ML.Classify.Compare(testlabel, results1);
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