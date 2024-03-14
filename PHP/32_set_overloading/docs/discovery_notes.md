The discovery rule first gets all class names, where the method `__set` is defined.
Afterwards it collects all `NEW` calles and filters them to see which of the instanciated objects has the method `__set` defined. 
The rule would be perfect, if we could additionally check, if one of the created objects invokes the `__set` method within its lifetime.