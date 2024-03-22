.data
baby:       .asciiz "Baby shark"
mommy:      .asciiz "Mommy shark"
daddy:      .asciiz "Daddy shark"
grandma:    .asciiz "Grandma shark"
grandpa:    .asciiz "Grandpa shark"
hunt:       .asciiz "Let's go hunt"
run:        .asciiz "Run away"
safe:       .asciiz "Safe at last"
end:        .asciiz "It's the end"
doo:        .asciiz ", doo doo doo doo doo doo"
family:     .word baby, mommy, daddy, grandma, grandpa,
                  hunt, run, safe, end
            .space 4

.text
la $s0, family

loop:       lw $s1, 0($s0)
            beqz $s1, exit
            
            li $t0, 3
printdoo:   li $v0, 4
            move $a0, $s1
            syscall
            beqz $t0, exc

            la $a0, doo
            syscall

            subi $t0, $t0, 1
            jal newline
            j printdoo

exc:        la $a0, '!'
            li $v0, 11
            syscall
            jal newline
            syscall

            addi $s0, $s0, 4
            j loop

exit:       li $v0, 10
            syscall

newline:    li $a0, '\n'
            li $v0, 11
            syscall
            jr $ra