 USING AxUnit;

 NAMESPACE TestControlModule

    {TestFixture}
    CLASS TestValve       
        {Test}
        METHOD PUBLIC TestClose
            VAR_TEMP
                resultGoToHome : BOOL;
                resultGoToWork : BOOL;
            END_VAR
            Assert.Equal(actual := resultGoToHome, expected := TRUE);
        END_METHOD
    END_CLASS

END_NAMESPACE
