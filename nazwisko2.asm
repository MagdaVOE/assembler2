org 100h
  mov     ah, 9           ; funkcja wyświetlania na ekran              
  mov     dx, jak_masz    ; co wyświetlić               
 int     21h             ; wyświetl

mov     ah, 9           ; funkcja wyświetlania na ekran              
  mov     dx, jak_masz2    ; co wyświetlić               
 int     21h             ; wyświetl

  mov     ah, 0ah ; funkcja pobierania danych z klawiatury              
  mov     dx, imie        ; bufor na dane          
  int     21h             ; pobierz dane

mov     ah, 0ah ; funkcja pobierania danych z klawiatury              
  mov     dx, nazwisko       ; bufor na dane          
  int     21h             ; pobierz dane

   mov     ah, 9            
  mov     dx, czesc             
 int     21h             ; wyświetl napis "Cześć"

 mov     ah, 9           
 mov     dx, imie+2      ; adres wpisanych danych            
 int     21h             ; wyświetl wpisane dane

mov     ah, 9           
 mov     dx, nazwisko+2      ; adres wpisanych danych            
 int     21h             ; wyświetl wpisane dane

 mov     ax, 4c00h          
int     21h

  jak_masz        db      "Jak masz na imie?" , 10, 13, '$'      
 imie    db 20           ; maksymalna ilość znaków do pobrania    
times 22 db "$"          

db 0
jak_masz2        db      "Jak masz na nazwisko?" , 10,13, '$'      
 nazwisko    db 20           ; maksymalna ilość znaków do pobrania              

db 0            ; tu dostaniemy, ile znaków pobrano         
 times 22 db "$" ; miejsce na dane
 czesc           db      10, 13, 10, 13, "Czesc $"