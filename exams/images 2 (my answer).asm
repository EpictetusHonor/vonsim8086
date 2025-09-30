´´´asm

pa equ 30h
pb equ 31h
ca equ 32h
cb equ 33h
int0 equ 24h
imr equ 21h
eoi equ 20h

org 1000h
mensaje db "Universidad De La Plata"
fin db 0

org 160
f10 dw f10_runtime

org 4000h
f10_runtime:
  mov ch,0
  mov al,eoi
  out eoi,al
  iret
org 3000h
libre:
  push ax
  cli
  mov al,[bx]
  out pb,al
  mov al,00000000b
  out pa,al
  mov al,00000010b
  out pa,al
  inc bx
  cmp byte ptr[bx],0
  jz termina
  sti
  pop ax
  ret
termina: 
  mov ch,0
  pop ax
  ret
org 2000h
;primero configuro cb,ca salida-entrada
  cli
  mov al,00000000b
  out cb,al
  mov al,11111101b
  out ca,al
  mov al,11111110b
  out imr,al
  mov al,40
  out int0,al
  mov bx,offset mensaje
  sti
loop:
  in al,pa
  and al,00000001b
  jnz loop
  call libre
  cmp ch,0
  jz final
  jmp loop
final:
  int 0
end
