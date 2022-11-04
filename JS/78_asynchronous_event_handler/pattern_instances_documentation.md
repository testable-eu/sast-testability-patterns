# Pattern Instances Documentation: [Asynchronous Event Handler]

| Instance                                              | Purpose    |
|-------------------------------------------------------|------------|
| `/1_instance_78_asynchronous_event_handler_server/`   | tarpit     |
| `/2_instance_78_asynchronous_event_handler_server/`   | tarpit     |

## Instance 1: `/1_instance_78_asynchronous_event_handler_server/`

### Definition
This pattern instance captures a tarpit related to the `EventEmitter` class.

### Code Snapshot
```javascript
var a = query.name;
let event = new events.EventEmitter('build');
event.addListener('build', func);
event.emit('build', a, res);
```
### Validation
when an `EventEmitter` is bounded to a function and an event instance throught a listener, 
the bounded function is triggered when the event is emitted somewhere in the code, if the event is triggered 
passing a tainted parameter, a SAST won't be able to follow the flow because is not keeping in track 
of the `addListener` the function that bounds a function to an event type, that represent the tarpit of this 
pattern instance.


### Verdicts
All in all, the tarpit is related to `addListener`.

### Discovery
Here we can simply search for `addListener`, since, according to the documentation 

```javascript
EventEmitter.prototype.on = EventEmitter.prototype.addListener;
```
The method `on` shall be searched as well.

### Remediation

#### Transformation

#### Modeling rules




## Instance 2: `/2_instance_78_asynchronous_event_handler_server/`

### Definition
This pattern instance captures a tarpit related to the `EventEmitter` class, the difference from instance 1 consists 
in the dynaminicity of the event to which a specific function trigger should be bounded, 
that's for this is a D4 pattern. 

### Code Snapshot
```javascript
var a = query.name;
var ev = query.func
let event = new events.EventEmitter('build');
event.addListener(ev, func);
event.emit('build', a, res);
```
### Validation
When an `EventEmitter` is bounded to a function and an event instance throught a listener, 
the bounded function is triggered when the event is emitted somewhere in the code, 
if the event is triggered passing a tainted parameter, a SAST won't be able to follow the flow because 
is not keeping in track of the `addListener` the function that bounds a function to an event type, 
that represent the tarpit of this pattern instance.


### Verdicts
All in all, the tarpit is related to `addListener`.

### Discovery
Here we can simply search for `addListener`, since, according to the documentation 

```javascript
EventEmitter.prototype.on = EventEmitter.prototype.addListener;
```
The method `on` shall be searched as well.

### Remediation

#### Transformation

#### Modeling rules