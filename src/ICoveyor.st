NAMESPACE ExampleClassLib
    INTERFACE IConveyor1
       METHOD Run END_METHOD
       METHOD Stop END_METHOD
    END_INTERFACE
 
    CLASS OneBeltConveyor1 IMPLEMENTS IConveyor1
       VAR PUBLIC
          belt : IBelt1;
       END_VAR
 
       METHOD PUBLIC Run
         belt.RunForward();
       END_METHOD
 
       METHOD PUBLIC Stop
          belt.Stop();
       END_METHOD
    END_CLASS
 
    INTERFACE IBelt1
       METHOD RunForward END_METHOD
       METHOD RunBackward END_METHOD
       METHOD Stop END_METHOD
    END_INTERFACE
 END_NAMESPACE
 
 NAMESPACE ExampleClassLib.Entry
 
    CLASS BeltImpl IMPLEMENTS IBelt1
       METHOD PUBLIC RunForward ; END_METHOD
       METHOD PUBLIC RunBackward ; END_METHOD
       METHOD PUBLIC Stop ; END_METHOD
    END_CLASS
 END_NAMESPACE