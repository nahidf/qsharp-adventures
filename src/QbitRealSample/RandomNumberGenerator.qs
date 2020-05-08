namespace QbitSample {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement; 

    operation RandomNumberGenerator() : Bool[] {
        mutable randomBits = new Bool[32];
    
        for (idx in 0..31) {
            using(qubit = Qubit())  {   
                H(qubit);                
                let result = MResetZ(qubit);
                set randomBits w/= idx <- result == One;
            }
        }
        return randomBits;
    }  
}

