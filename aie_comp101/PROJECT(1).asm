//DECLARING 999
(DECLARATION)
 @9               
 D=A
 @O
 M=D
 @T
 M=D
 @H
 M=D
//END


//INITIAL PRINT OF 999
(INITIAL_H)           
	@17800
	M=-1
	@17832
	M=-1
	@17864
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@17896
	M=D
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
	M=D
	@18056
	M=D
	@18088
	M=-1
	@18120
	M=-1	
	@18152
	M=-1	
	@16384
	D=A
	@0
	D=A-D	
	@18184
	M=D	
    //@16384
    //D=A
    //@0
    //D=A-D
	@18216
	M=D
	@18248
	M=D
	@18280
	M=D
	@18312
	M=D
	@18344
	M=D	
	@18376
	M=D
	@18408
	M=-1	
	@18440
	M=-1
	@18472
	M=-1

(INITIAL_T)                           
	@18792
	M=-1
	@18824
	M=-1
	@18856
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@18888
	M=D
	@18920
	M=D
	@18952
	M=D
	@18984
	M=D
	@19016
	M=D
	@19048
	M=D
	@19080
	M=-1
	@19112
	M=-1
	@19144	
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@19176
	M=D
    //@16384
    //D=A
    //@0
    //D=A-D
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D
	@19336
	M=D
	@19368
	M=D
	@19400
	M=-1
	@19432
	M=-1
	@19464
	M=-1

(INITIAL_O)
	@19784
	M=-1
	@19816
	M=-1
	@19848
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@19880
	M=D
	@19912
	M=D
	@19944
	M=D
	@19976
	M=D
	@20008
	M=D
	@20040
	M=D
	@20072
	M=-1
	@20104
	M=-1
	@20136
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@20168
	M=D
    //@16384
    //D=A
    //@0
    //D=A-D
	@20200
	M=D
	@20232
	M=D
	@20264
	M=D
	@20296
	M=D
	@20328
	M=D
	@20360
	M=D
	@20392
	M=-1
	@20424
	M=-1
	@20456
	M=-1   



//CALCULATION BECOMES
(ONES)             //Ones
 @O
 D=M
 @TENS
 D;JEQ
 @O
 M=M-1
 D=M
 (SELECTION_O)
        @1
        D=D-A
        @DISP1_O
        D;JEQ
        
        @2
        D=D-A
        @DISP2_O
        D;JEQ
        
        @3
        D=D-A
        @DISP3_O
        D;JEQ

        @4
        D=D-A
        @DISP4_O
        D;JEQ
        
        @5
        D=D-A
        @DISP5_O
        D;JEQ

        @6
        D=D-A
        @DISP6_O
        D;JEQ

        @7
        D=D-A
        @DISP7_O
        D;JEQ

        @8
        D=D-A
        @DISP8_O
        D;JEQ

        @9
        D=D-A
        @DISP9_O
        D;JEQ

 (DISP1_O)
     @768
	 D=A
     @19784
	 M=D
	 @19816
	 M=D
	 @19848
	 M=D
	 @19880
	 M=D
	 @19912
	 M=D
	 @19944
	 M=D
	 @19976
	 M=D
	 @20008
     M=D	
	 @20040
	 M=D
	 @20072
	 M=D
	 @20104
	 M=D
	 @20136
	 M=D
	 @20168
	 M=D
	 @20200
	 M=D
	 @20232
	 M=D
	 @20264
	 M=D
	 @20296
	 M=D
	 @20328
	 M=D
	 @20360
	 M=D
	 @20392
	 M=D
	 @20424
	 M=D
	 @20456
     M=D
 (DISP2_O)
	 @19784
	 M=-1
	 @19816
	 M=-1
	 @19848
	 M=-1
	 @0
	 D=A
	 @8192
	 D=D-A
	 @19880
	 M=D	
	 @19912
	 M=D
	 @19944
	 M=D
	 @19976
	 M=D
	 @20008
	 M=D
	 @20040
	 M=D
	 @20072
	 M=-1
	 @20104
	 M=-1
	 @20136
	 M=-1
	 @7
	 D=A
	 @20168
	 M=D
	 @20200
	 M=D
	 @20232
	 M=D
	 @20264
	 M=D
	 @20296
	 M=D
	 @20328
	 M=D
	 @20360
	 M=D
	 @20392
	 M=-1
	 @20424
	 M=-1
	 @20456
	 M=-1	
 (DISP3_O)
        @19784
	M=-1
	@19816	
	M=-1
	@19848
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@19880
	M=D
	@19912
	M=D
	@19944
	M=D
	@19976
	M=D
	@20008
	M=D
	@20040
	M=D
	@20072
	M=D
	@20104
	M=-1
	@20136
	M=-1
	@20168
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@20200
	M=D
	@20232
	M=D
	@20264
	M=D
	@20296
	M=D
	@20328
	M=D
	@20360
	M=D
	@20392
	M=D
	@20424
	M=-1
	@20456
	M=-1

 (DISP4_O)
	@7
	D=A
	@19784
	M=D
	@19816
	M=D
	@19848
	M=D
	@19880
	M=D
	@1799
	D=A
	@19912
	M=D
	@19944
	M=D
	@19976
	M=D
	@20008
	M=D
	@20040
	M=D
	@20072
	M=D
	@20104
	M=-1
	@20136
	M=-1
	@20167
	M=-1
	@1792
	D=A
	@20200
	M=D
	@20196
	M=D
	@20264
	M=D
	@20296
	M=D
	@20328
	M=D
	@20360
	M=D
	@20392
	M=D
	@20424
	M=D
	@20456
	M=D

 (DISP5_O)
    @19784
	M=-1
	@19816
	M=-1
	@19848
	M=-1
	@3
	D=A
	@19880
	M=D
	@19912
	M=D
	@19944
	M=D
	@19976
	M=D
	@20008
	M=D
	@20040
	M=D
	@20072
	M=D
	@20104
	M=-1
	@20136
	M=-1
	@20168
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@20200
	M=D
	@20232
	M=D
	@20264
	M=D
	@20296
	M=D
	@20328
	M=D
	@20360
	M=D
	@20392
	M=D
	@20424
	M=-1
	@20456
	M=-1

 (DISP6_O)
	@19784
	M=-1
	@19816
	M=-1	
	@19848
	M=-1
	@7
	D=A
	@19880
	M=D
	@19912
	M=D
	@19944
	M=D	
	@19976
	M=D
	@20008
	M=D
	@20040
	M=D
	@20072
	M=-1
	@20104
	M=-1
	@20136
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@20168
	M=D
	@20200
	M=D
	@20232	
	M=D
	@20264
	M=D
	@20296
	M=D
	@20328
	M=D
	@20360
	M=D
	@20392
	M=-1
	@20424
	M=-1
	@20456
	M=-1	
 (DISP7_O)
	@19784
	M=-1
	@19816
	M=-1
	@19848
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@19880
	M=D
	@19912
	M=D
	@19944
	M=D	
	@19976
	M=D
	@20008
	M=D
	@20040	
	M=D
	@20072
	M=D
	@20104
	M=D
	@20136
	M=D
	@20168
	M=D	
	@20200
	M=D
	@20232
	M=D
	@20264
	M=D
	@20296
	M=D	
	@20328
	M=D
	@20360
	M=D
	@20392
	M=D
	@20424	
	M=D
	@20456	
	M=D
 (DISP8_O)
	@19784
	M=-1
	@19816
	M=-1
	@19848
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@19880
	M=D
	@19912
	M=D
	@19944
	M=D
	@19976
	M=D
	@20008
	M=D
	@20040
	M=D
	@20072
	M=-1
	@20104
	M=-1
	@20136
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@20168
	M=D		
	@20200
	M=D
	@20232
	M=D
	@20264
	M=D
	@20296
	M=D	
	@20328
	M=D
	@20360
	M=D
	@20392
	M=-1
	@20424
	M=-1
	@20456
	M=-1

 (DISP9_O)
	@19784
	M=-1
	@19816
	M=-1
	@19848
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@19880
	M=D
	@19912
	M=D
	@19944
	M=D
	@19976
	M=D
	@20008
	M=D
	@20040
	M=D
	@20072
	M=-1
	@20104
	M=-1
	@20136	
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@20168
	M=D
	@20200
	M=D
	@20232
	M=D
	@20264
	M=D
	@20296
	M=D
	@20328
	M=D
	@20360
	M=D
	@20392
	M=-1
	@20424
	M=-1
	@20456
	M=-1   

 
 @ONES
 0;JMP







(TENS)             //Tens
 @T
 M=M-1
 D=M
 //TO SEE WHICH NUMBER TO PRINT TENS
 (SELECTION_T)
        @1
        D=D-A
        @DISP1_T
        D;JEQ
        
        @2
        D=D-A
        @DISP2_T
        D;JEQ
    
        @3
        D=D-A
        @DISP3_T
        D;JEQ

        @4
        D=D-A
        @DISP4_T
        D;JEQ
        
        @5
        D=D-A
        @DISP5_T
        D;JEQ

        @6
        D=D-A
        @DISP6_T
        D;JEQ

        @7
        D=D-A
        @DISP7_T
        D;JEQ

        @8
        D=D-A
        @DISP8_T
        D;JEQ

        @9
        D=D-A
        @DISP9_T
        D;JEQ
 //START OF DISPLAY 
 (DISP1_T)
    @768
	D=A
    @18792
	M=D
	@18824
	M=D
	@18856
	M=D
	//@16384
	//D=A
	//@0
	//D=A-D
	@18888
	M=D
	@18920
	M=D
	@18952
	M=D
	@18984
	M=D
	@19016
        M=D	
	@19048
	M=D
	@19080
	M=D
	@19112
	M=D
	@19144
	M=D
	@19176
	M=D
	//@16384
	//D=A
	//@0
	//D=A-D
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D
	@19336
	M=D
	@19368
	M=D
	@19400
	M=D
	@19432
	M=D
	@19464
    M=D
        


 (DISP2_T)
	@18792
	M=-1
	@18824
	M=-1
	@18856
	M=-1
	@0
	D=A
	@8192
	D=D-A
	@18888
	M=D	
	@18920
	M=D
	@18952
	M=D
	@18984
	M=D
	@19016
	M=D
	@19048
	M=D
	@19080
	M=-1
	@19112
	M=-1
	@19144
	M=-1
	@7
	D=A
	@19176
	M=D
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D
	@19336
	M=D
	@19368
	M=D
	@19400
	M=-1
	@19432
	M=-1
	@19464
	M=-1

	
 (DISP3_T)
    @18792
	M=-1
	@18824	
	M=-1
	@18856
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@18888
	M=D
	@18920
	M=D
	@18952
	M=D
	@18984
	M=D
	@19016
	M=D
	@19048
	M=D
	@19080
	M=D
	@19112
	M=-1
	@19144
	M=-1
	@19176
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D
	@19336
	M=D
	@19368
	M=D
	@19400
	M=D
	@19432
	M=-1
	@19464
	M=-1

 (DISP4_T)
	@7
	D=A
	@18792
	M=D
	@18824
	M=D
	@18856
	M=D
	@18888
	M=D
	@1799
	D=A
	//@8080
	//D=D-A
	@18920
	M=D
	@18952
	M=D
	@18984
	M=D
	@19016
	M=D
	@19048
	M=D
	@19080
	M=D
	@19112
	M=-1
	@19144
	M=-1
	//@16384
	//D=A
	//@0
	//D=A-D

	@19176
	M=-1
	//@16384
	//D=A
	//@0
	//D=A-D
	@1792
	D=A
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D
	@19336
	M=D
	@19368
	M=D
	@19400
	M=D
	@19432
	M=D
	@19464
	M=D

 (DISP5_T)
    @18792
	M=-1
	@18824
	M=-1
	@18856
	M=-1
	@3
	D=A
	//@0
	//D=A-D
	@18888
	M=D
	@18920
	M=D
	@18952
	M=D
	@18984	
	M=D
	@19016
	M=D
	@19048
	M=D
	@19080
	M=D
	@19112
	M=-1
	@19144
	M=-1
	@19176
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D
	@19336
	M=D
	@19368
	M=D
	@19400
	M=D
	@19432
	M=-1
	@19464
	M=-1

 (DISP6_T)
	@18792
	M=-1
	@18824
	M=-1	
	@18856
	M=-1
	@7
	D=A
	@18888
	M=D
	@18920
	M=D
	@18952
	M=D	
	@18984	
	M=D
	@19016
	M=D
	@19048
	M=D
	@19080
	M=-1
	@19112
	M=-1
	@19144
	M=-1
    //@16384
    //D=A
    //@0
    //D=A-D
	@0
	D=A
	@8185
	D=D-A
	@19176
	M=D
    //@16384
    //D=A
    //@0
    //D=A-D
	@19208
	M=D
	@19240	
	M=D
	@19272
	M=D
	@19304
	M=D
	@19336
	M=D
	@19368
	M=D
	@19400
	M=-1
	@19432
	M=-1
	@19464
	M=-1

	
 (DISP7_T)
	@18792
	M=-1
	@18824
	M=-1
	@18856
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@18888
	M=D
	@18920
	M=D
	@18952
	M=D	
	@18984
	M=D
	@19016
	M=D
	@19048	
	M=D
	@19080
	M=D
	@19112
	M=D
	@19144
	M=D
	@19176
	M=D	
    //@16384
    //D=A
    //@0
    //D=A-D
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D	
	@19336
	M=D
	@19368
	M=D
	@19400
	M=D
	@19432	
	M=D
	@19464	
	M=D

 (DISP8_T)
	@18792
	M=-1
	@18824
	M=-1
	@18856
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@18888
	M=D
	@18920
	M=D
	@18952
	M=D
	@18984
	M=D
	@19016
	M=D
	@19048
	M=D
	@19080
	M=-1
	@19112
	M=-1
	@19144
	M=-1
    //@16384
    //D=A
    //@0
    //D=A-D
	@0
	D=A
	@8185
	D=D-A
	@19176
	M=D		
	//@16384	
    //D=A
    //@0
    //D=A-D
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D	
	@19336
	M=D
	@19368
	M=D
	@19400
	M=-1
	@19432
	M=-1
	@19464
	M=-1

 (DISP9_T)
	@18792
	M=-1
	@18824
	M=-1
	@18856
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@18888
	M=D
	@18920
	M=D
	@18952
	M=D
	@18984
	M=D
	@19016
	M=D
	@19048
	M=D
	@19080
	M=-1
	@19112
	M=-1
	@19144	
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@19176
	M=D
    //@16384
    //D=A
    //@0
    //D=A-D
	@19208
	M=D
	@19240
	M=D
	@19272
	M=D
	@19304
	M=D
	@19336
	M=D
	@19368
	M=D
	@19400
	M=-1
	@19432
	M=-1
	@19464
	M=-1   
 //END OF DIPLAY OF TENS
 @HUND
 D;JEQ
 @9
 D=A
 @O
 M=D
 @ONES
 0;JMP








(HUND)             //Hund
 @H
 M=M-1
 D=M
 //TO SEE WHICH NUMBER TO PRINT HUND
 (SELECTION_H)
        @1
        D=D-A
        @DISP1_H
        D;JEQ
    
        @2
        D=D-A
        @DISP2_H
        D;JEQ
 
        @3
        D=D-A
        @DISP3_H
        D;JEQ

        @4
        D=D-A
        @DISP4_H
        D;JEQ
        
        @5
        D=D-A
        @DISP5_H
        D;JEQ

        @6
        D=D-A
        @DISP6_H
        D;JEQ
     	
        @7
        D=D-A
        @DISP7_H
        D;JEQ
	
        @8
        D=D-A
        @DISP8_H
        D;JEQ

        @9
        D=D-A
        @DISP9_H
        D;JEQ

 //END OF SELECTION OF HUND

 //START OF DISPLAYS OF HUND
 (DISP1_H)
    @768
	D=A
    @17800
	M=D
	@17832
	M=D
	@17864
	M=D
	//@16384
	//D=A
	//@0
	//D=A-D
	@17896
	M=D
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
        M=D	
	@18056
	M=D
	@18088
	M=D
	@18120
	M=D
	@18152
	M=D
	@18184
	M=D
	//@16384
	//D=A
	//@0
	//D=A-D
	@18216
	M=D
	@18248
	M=D
	@18280
	M=D
	@18312
	M=D
	@18344
	M=D
	@18376
	M=D
	@18408
	M=D
	@18440
	M=D
	@18472
    M=D

 (DISP2_H)
	@17800
	M=-1
	@17832
	M=-1
	@17864
	M=-1
	@0
	D=A
	@8192
	D=D-A
	@17896
	M=D	
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
	M=D
	@18056
	M=D
	@18088
	M=-1
	@18120
	M=-1
	@18152
	M=-1
	@7
	D=A
	@18184
	M=D
	@18216
	M=D
	@18248
	M=D
	@18280
	M=D
	@18312
	M=D
	@18344
	M=D
	@18376
	M=D
	@18408
	M=-1
	@18440
	M=-1
	@18472
	M=-1
    
 (DISP3_H)
       	@17800
	M=-1
	@17832
	M=-1
	@17864
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@17896
	M=D
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
	M=D
	@18056
	M=D
	@18088
	M=D
	@18120
	M=-1
	@18152
	M=-1
	@18184
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@18216
	M=D
	@18248
	M=D
	@18280
	M=D
	@18312
	M=D
	@18344
	M=D
	@18376
	M=D
	@18408
	M=D
	@18440
	M=-1
	@18472
	M=-1
    
 (DISP4_H)
	@7
	D=A
	@17800
	M=D
	@17832
	M=D
	@17864
	M=D
	@17896
	M=D
	@1799
	D=A
	//@8080
	//D=D-A
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
	M=D
	@18056
	M=D
	@18088
	M=D
	@18120
	M=-1
	@18152
	M=-1
	//@16384
	//D=A
	//@0
	//D=A-D

	@18184
	M=-1
	//@16384
	//D=A
	//@0
	//D=A-D
	@1792
	D=A
	@18216
	M=D
	@18248
	M=D
	@18280
	M=D
	@18312
	M=D
	@18344
	M=D
	@18376
	M=D
	@18408
	M=D
	@18440
	M=D
	@18472
	M=D
    
 (DISP5_H)
    @17800
	M=-1
	@17832
	M=-1
	@17864
	M=-1
	@3
	D=A
	//@0
	//D=A-D
	@17896
	M=D
	@17928
	M=D
	@17960
	M=D
	@17992	
	M=D
	@18024
	M=D
	@18056
	M=D
	@18088
	M=D
	@18120
	M=-1
	@18152
	M=-1
	@18184
	M=-1
	@16384
	D=A
	@0
	D=A-D
	@18216
	M=D
	@18248
	M=D
	@18280
	M=D
	@18312
	M=D
	@18344
	M=D
	@18376
	M=D
	@18408
	M=D
	@18440
	M=-1
	@18472
	M=-1

 (DISP6_H)
	@17800
	M=-1
	@17832
	M=-1
	@17864
	M=-1
	@7
	D=A
	@17896
	M=D
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
	M=D	
	@18056
	M=D
	@18088
	M=-1
	@18120
	M=-1
	@18152
	M=-1
	//@16384
	//D=A	
	//@0
	//D=A-D
	@0
	D=A	
	@8185
	D=D-A
	@18184
	M=D
	//@16384	
	//D=A
	//@0
	//D=A-D
	@18216
	M=D
	@18248
	M=D
	@18280	
	M=D	
	@18312
	M=D	
	@18344
	M=D
	@18376	
	M=D
	@18408
	M=-1
	@18440
	M=-1
	@18472
	M=-1

 (DISP7_H)
	@17800
	M=-1
	@17832
	M=-1	
	@17864
	M=-1
	@16384
	D=A
	@0
	D=A-D																						
	@17896
	M=D
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
	M=D
	@18056
	M=D
	@18088
	M=D
	@18120
	M=D
	@18152
	M=D	
	@18184
	M=D
    //@16384
    //D=A
    //@0
    //D=A-D
	@18216
	M=D
	@18248
	M=D
	@18280
	M=D
	@18312
	M=D
	@18344
	M=D
	@18376	
	M=D
	@18408
	M=D
	@18440
	M=D
	@18472
	M=D

 (DISP8_H)
	@17800
	M=-1
	@17832
	M=-1
	@17864
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@17896
	M=D
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
	M=D
	@18056
	M=D
	@18088
	M=-1
	@18120
	M=-1	
	@18152
	M=-1	
    //@16384
    //D=A
    //@0
    //D=A-D
	@0
	D=A
	@8185
	D=D-A	
	@18184
	M=D
    //@16384
    //D=A
    //@0
    //D=A-D
	@18216
	M=D	
	@18248
	M=D
	@18280	
	M=D
	@18312
	M=D
	@18344
	M=D
	@18376
	M=D
	@18408
	M=-1
	@18440
	M=-1
	@18472
	M=-1

 (DISP9_H)
	@17800
	M=-1
	@17832
	M=-1
	@17864
	M=-1
	@0
	D=A
	@8185
	D=D-A
	@17896
	M=D
	@17928
	M=D
	@17960
	M=D
	@17992
	M=D
	@18024
	M=D
	@18056
	M=D
	@18088
	M=-1
	@18120
	M=-1	
	@18152
	M=-1	
	@16384
	D=A
	@0
	D=A-D	
	@18184
	M=D	
    //@16384
    //D=A
    //@0
    //D=A-D
	@18216
	M=D
	@18248
	M=D
	@18280
	M=D
	@18312
	M=D
	@18344
	M=D	
	@18376
	M=D
	@18408
	M=-1	
	@18440
	M=-1
	@18472
    M=-1

 //END OF DISPLAYS OF HUND

 @END
 D;JEQ
 @9
 D=A
 @T
 M=D
 @O
 M=D
 @ONES
 0;JMP

(END)              //End of the program
 @END
 0;JMP