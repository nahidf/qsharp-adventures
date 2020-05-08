namespace QbitSample {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;    

    operation MeasureQubits(count : Int) : Int 
    {
        mutable resultsTotal = 0;
 
        using (qubit = Qubit()) 
        {
            for (idx in 0..count) { 
                  H(qubit);          
                let result = MResetZ(qubit);
                set resultsTotal += result == One ? 1 | 0;
            }
		}
 
        return resultsTotal;
    }  
}

