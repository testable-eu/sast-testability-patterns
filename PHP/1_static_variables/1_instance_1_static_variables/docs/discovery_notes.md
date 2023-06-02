To discover the static variables in opcode, I search for the opcode BIND_STATIC.
The `BIND_STATIC` opcode is only for static variables that are normally used inside code blocks. The SAST tools may not able to keep the proper values for these static variables. 
As such the discovery rule should be accurate as it is.