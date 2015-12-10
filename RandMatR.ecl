/**
 * @Author Itauma Itauma
 * @date   April, 2015
 */
 
IMPORT * FROM ML.Mat;



Produce_Random (min_n,max_n) := FUNCTION

R := RANDOM() % (max_n - min_n + 1) + min_n;

RETURN R;
END;

 



//return a matrix with "Nrows" number of rows and "NCols" number of cols. The  matrix is initilized with random numbers
EXPORT RandMatR (UNSIGNED Nrows, UNSIGNED NCols, min_n,max_n) := FUNCTION


ONE := DATASET ([{1,1,0}],Types.Element);

MatZero := Mat.Repmat (ONE, Nrows, NCols); // matrix of zeros of the size NRows*NCols

//replce zero values in MatZero with random generated values
Types.Element RandomizeMat(Types.Element l) := TRANSFORM
  r1 := Produce_Random(min_n,max_n);
  Self.Value := r1;
  Self := l;
END;


Result := PROJECT (MatZero,RandomizeMat(LEFT) );
RETURN Result;

END;