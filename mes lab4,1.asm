ljmp main
org 0030H
main:
    mov p1, #00H
Loop:
    cpl p1.0
    acall delay
    sjmp loop
Delay:
     mov tmod, #01H
     mov th0, #3ch
     mov tl0, #0b0h
     setb tr0
wait:
     jnb tf0, wait
     clr tr0
     clr tf0
     ret
end