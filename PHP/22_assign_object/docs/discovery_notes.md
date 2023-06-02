This rules first collects all `ASSIGN` calls, which are reachable by a `NEW` call in `G1`. 
In `R1` it collects all `ASSIGN` calls where one variable is assigned to another variable in a list.
Finally, the rule filters out all `ASSIGN` calls from `R1`, where any call from `G1` is invoked in.