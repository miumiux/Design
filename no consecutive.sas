/*(a) In a dysphagia study, the investigators want to nd out how the laryngeal tis-
sues coordinate with each other during swallowing. Subjects who enrolled in the study
were asked to swallow dierent types and volumes of food samples, and the muscle
movements during their swallows will be recorded. Suppose there are 4 combinations:
5cc water, 15cc water, 5cc pudding and 15cc pudding, and each combination will be
repeated 3 times. This way, one subject need to make 12 swallows in total sequen-
tially. To avoid the possible confounding eect, the sequence of food samples should
be randomized for each subject. However, due to the diculty of swallowing 15cc
pudding successively, in the food sample sequence, 15cc pudding cannot be placed
next to each other.*/

%macro ranseq1();
data sequence1;
do treatment = 1 to 3;
do rep = 1 to 3;
ran = ranuni(12345);output;
end;
end;
run;
proc sort data = sequence1;
by ran; run;

data sequence1;
set sequence1;
loc = _N_;
keep treatment loc;
run;

data sequence2;
do loc = 0.5 to 9.5 by 1;
ran = ranuni(12345);output;
end;
run;

proc sort data = sequence2;
by ran; run;

data sequence2;
set sequence2;
if _N_ <=3;
treatment = 4 ;
keep treatment loc;
run;
data sequence;
set sequence1 sequence2 ;
run;
proc sort data= sequence;
by loc; run;
proc print data= sequence;
var treatment; run;
%mend;
%ranseq1();
