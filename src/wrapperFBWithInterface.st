USING ExampleClassLib.Entry;
USING ExampleClassLib;
    // Wrapper FB
NAMESPACE ExampleClassLib
    FUNCTION_BLOCK EquipmentModule2 // Wrapper FB
        VAR_INPUT
           start : BOOL;
           stop : BOOL;
        END_VAR
        VAR // OK, interfaces can be declared in VAR
           beltInst : BeltImpl;
           belt     : IBelt1;
           feed     : OneBeltConveyor1;
           init     : BOOL := TRUE;
        END_VAR
  
        IF init THEN
           init := FALSE;
           belt := beltInst;  // initialize interface
           feed.belt := belt; // use interface
        END_IF;
  
        IF start AND NOT stop THEN
           feed.Run();
        ELSIF stop THEN
           feed.Stop();
        END_IF;
     END_FUNCTION_BLOCK
END_NAMESPACE