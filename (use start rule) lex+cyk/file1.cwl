NAME _PROGRAM ;
BODY DATA INTEGER16 _VALUEIN , _RESULTO , _CYCLEAC ;
  GET (_VALUEIN)
  _RESULTO << 1
  FOR  _CYCLEAC << 0 TO 32767 DO
    IF ( _VALUEIN != 0 ) ; ELSE GOTO _ENDCYCL ;
     _RESULTO << _RESULTO * _VALUEIN
     _VALUEIN << _VALUEIN - 1
  ;
  _ENDCYCL :
  PUT ( _RESULTO )
END