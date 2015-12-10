/**
 * @Author Itauma Itauma
 * @date   June, 2015
 */
 
IMPORT $;

crossAssignmentsLayout := $.crossAssignmentsLayout;



EXPORT computeAccuracy(DATASET(crossAssignmentsLayout) crossAssignments) := FUNCTION

//Computing the accuracy of all the classes
//OUTPUT(compare1.CrossAssignments,, '~online::ii::bigdata::crossassignments', OVERWRITE, CSV);

//Append unique ID to crossAssignments
//ML.AppendID(compareCrossAssignments, id, crossAssignments);
//OUTPUT(crossAssignments, NAMED ('crossAssignments')); //A dataset of crossAssignments
/*
crossAssignmentsLayout := RECORD
	UNSIGNED id;
	INTEGER classifier;
	INTEGER c_actual;
	INTEGER c_modeled;
	INTEGER cnt;
END;
*/

//crossAssignments_table := TABLE(crossAssignments,crossAssignmentsLayout);
//OUTPUT(crossAssignments_table, NAMED ('crossAssignments_table'));
//crossAssignments(c_actual = c_modeled); //Confusion matrix diagonal
diagVec := crossAssignments(c_actual = c_modeled);
//diagVec;
totalAccuratePrediction := SUM(diagVec,cnt);
totalSamples := SUM(crossAssignments,cnt);
accuracy := (totalAccuratePrediction / totalSamples)*100;
//OUTPUT(accuracy, NAMED('Accuracy'));
RETURN accuracy;

END;

