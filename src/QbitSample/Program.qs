namespace QbitSample {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Diagnostics;
    

    @EntryPoint()
    operation HelloQ() : Unit {
        using (q = Qubit()) {
            Message("Input:");
            Message("q = ∣0❭, index = 1");

            Message("Requaired Output:");
            Message("∣0❭:     0.707107 +  0.000000 i");
            Message("∣1❭:     0.000000 + -0.707107 i");

            Task12(q, 1);
            Message("Your Output:");
            DumpMachine();

            Reset(q);
        }
    }

    operation Task12(q: Qubit, count : Int) : Unit {
        }
    }

