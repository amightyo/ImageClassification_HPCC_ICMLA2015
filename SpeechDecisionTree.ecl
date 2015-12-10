/**
 * @Author Itauma Itauma
 * @date   June, 2015
 */
 
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
INTEGER Label;
END;
//test_data_tmp := DATASET('~thesis::ii::bigdata::artrain', value_record, CSV);
//train_data_tmp := DATASET('~thesis::ii::bigdata::artest', value_record, CSV);
train_data_tmp := DATASET('~thesis::ii::bigdata::supervised_speechtraindata', value_record, CSV);
test_data_tmp := DATASET('~thesis::ii::bigdata::supervised_speechtestdata', value_record, CSV);
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