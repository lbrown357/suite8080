		LXI    h,00faeh
	LOOP:	LXI    sp,STACK
		IN     00h
		RRC
		RC
		IN     01h
		CMP    l
		RZ
		DCR    l
		MOV    m,a
		RNZ
		PCHL

	STACK:	DW     LOOP
		END
