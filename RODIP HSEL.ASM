org 7C00h
start:

  MOV    AH,  13h
  MOV    CX,  15
  MOV    BL,  00001010b
  MOV    DL,  0
  MOV    DH,  12
  MOV    BP,  string
  INT    10h

  MOV    CX,  7

  MOV    DL,  70
  MOV    DH,  9
  MOV    BP,  a
  INT    10h

  MOV    DL,  69
  MOV    DH,  10
  MOV    BP,  b
  INT    10h

  MOV    DL,  68
  MOV    DH,  11
  MOV    BP,  c
  INT    10h

  MOV    DL,  67
  MOV    DH,  12
  MOV    BP,  d
  INT    10h

   string   DB     'Demyanenko Egor'
   a   DB     '^      '
   b   DB     '^^^    '
   c   DB     '^^^^^  '
   d   DB     '^^^^^^^'

exit:


db 510-($-$$) dup 0
dw 0AA55h