# Codebook for tidy data set created with run_analysis.R

The following is a list of variables and their descriptions:

1. Subject - the subjects' id numbers
2. Group - the group, testing or training that the subject was included in
3. Activity - the activity being performed by the subject while the data was collected

The following variables are grouped means of each variable by subject, by activity. Variables with "Body" in their name are measurements of body movement, while variables with "Gravity" in their name are a measurement due to the effects of gravity. 

"t" denotes a time domain signal (captured at a constant rate of 50Hz).

"f" denotes a Fast Fourier Transform was applied to the signal to create a frequency domain signal.

"Acc" stands for data collected via the accelerometer. 

"Gyro" stands for data collected via the gyrometer. 

"Jerk" is the Jerk signal attained from body linear acceleration and angular velocity derived in time. 

"Mag" stands for the magnitude of the signal calculated using the Euclidean norm.

"Mean" denotes the variable contains a grouped mean for the activity level.

"Std" denotes the variable contains an average standard deviation for the activity level.

"X", "Y", "Z" denotes the dimension the data is from.

4. tBodyAccMeanX
5. tBodyAccMeanY
6. tBodyAccMeanZ
7. tBodyAccStdX
8. tBodyAccStdY
9. tBodyAccStdZ
10. tGravityAccMeanX
11. tGravityAccMeanY
12. tGravityAccMeanZ
13. tGravityAccStdX
14. tGravityAccStdY
15. tGravityAccStdZ
16. tBodyAccJerkMeanX
17. tBodyAccJerkMeanY
18. tBodyAccJerkMeanZ
19. tBodyAccJerkStdX
20. tBodyAccJerkStdY
21. tBodyAccJerkStdZ
22. tBodyGyroMeanX
23. tBodyGyroMeanY
24. tBodyGyroMeanZ
25. tBodyGyroStdX
26. tBodyGyroStdY
27. tBodyGyroStdZ
28. tBodyGyroJerkMeanX
29. tBodyGyroJerkMeanY
30. tBodyGyroJerkMeanZ
31. tBodyGyroJerkStdX
32. tBodyGyroJerkStdY
33. tBodyGyroJerkStdZ
34. tBodyAccMagMean
35. tBodyAccMagStd
36. tGravityAccMagMean
37. tGravityAccMagStd
38. tBodyAccJerkMagMean
39. tBodyAccJerkMagStd
40. tBodyGyroMagMean
41. tBodyGyroMagStd
42. tBodyGyroJerkMagMean
43. tBodyGyroJerkMagStd
44. fBodyAccMeanX
45. fBodyAccMeanY
46. fBodyAccMeanZ
47. fBodyAccStdX
48. fBodyAccStdY
49. fBodyAccStdZ
50. fBodyAccMeanFreqX
51. fBodyAccMeanFreqY
52. fBodyAccMeanFreqZ
53. fBodyAccJerkMeanX
54. fBodyAccJerkMeanY
55. fBodyAccJerkMeanZ
56. fBodyAccJerkStdX
57. fBodyAccJerkStdY
58. fBodyAccJerkStdZ
59. fBodyAccJerkMeanFreqX
60. fBodyAccJerkMeanFreqY
61. fBodyAccJerkMeanFreqZ
62. fBodyGyroMeanX
63. fBodyGyroMeanY
64. fBodyGyroMeanZ
65. fBodyGyroStdX
66. fBodyGyroStdY
67. fBodyGyroStdZ
68. fBodyGyroMeanFreqX
69. fBodyGyroMeanFreqY
70. fBodyGyroMeanFreqZ
71. fBodyAccMagMean
72. fBodyAccMagStd
73. fBodyAccMagMeanFreq
74. fBodyBodyAccJerkMagMean
75. fBodyBodyAccJerkMagStd
76. fBodyBodyAccJerkMagMeanFreq
77. fBodyBodyGyroMagMean
78. fBodyBodyGyroMagStd
79. fBodyBodyGyroMagMeanFreq
80. fBodyBodyGyroJerkMagMean
81. fBodyBodyGyroJerkMagStd
82. fBodyBodyGyroJerkMagMeanFreq
83. angletBodyAccMeangravity
84. angletBodyAccJerkMeangravityMean
85. angletBodyGyroMeangravityMean
86. angletBodyGyroJerkMeangravityMean
87. angleXgravityMean
88. angleYgravityMean
89. angleZgravityMean