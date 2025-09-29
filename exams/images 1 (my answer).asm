´´´asm

pa equ 30h
pb equ 31h
ca equ 32h
cb equ 33h

org 3000h
buenosdias:
  push ax
  push bx
  mov al, offset chau-offset buenas
  mov bx, offset buenas
  int 7
  ;enter, para prolijidad
  mov al, 1
  mov bx, offset enter
  int 7
  pop ax
  pop bx
  ret
  
org 4000h
despedida:
  push ax
  push bx
  mov al, offset fin-offset chau
  mov bx, offset chau
  int 7
  ;enter, para prolijidad
  mov al, 1
  mov bx, offset enter
  int 7
  pop ax
  pop bx
  ret
  
org 1000h
buenas db "Buen dia"
chau db "Adios"
fin db ?
enter db 10
org 2000h

  mov al, 11111111b
  out ca, al
  mov al, 00000000b
  out cb, al
  
loop:
  in al,pa  
  xor al,11111111b
  out pb,al
  cmp al,01111111b
  jz buendia
  cmp al,0ffh
  jz adios
  cmp al,00101000b
  jz final
  jmp loop
  
;te desea un buen dia o despide si 10000000 o 00000000 respectivamente en las llaves
buendia:
  call buenosdias
  jmp loop
adios:
  call despedida
  jmp loop
final:
  int 0
END
