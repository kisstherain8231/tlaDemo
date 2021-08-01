--------------------------- MODULE SimpleProgram ---------------------------

EXTENDS Integers
VARIABLES i, pc

Init == (pc = "start" /\ (i = 0))

Pick == \/ /\ pc = "start"
           /\ i' \in 0 .. 1000
           /\ pc' = "middle"
            
Add1 ==  \/ /\ pc = "middle"
            /\ i' = i + 1
            /\ pc' = "done"

Next == Pick \/ Add1

=============================================================================
\* Modification History
\* Last modified Sat Jul 24 15:34:36 CST 2021 by luyu
\* Created Sat Jul 24 12:50:52 CST 2021 by luyu

