
 ##############################################################    
    
  # C code for which assembly language code is begin written
   
  #   i=4
  #   j=3
     
  #   if(i==j)
  #     i++;
        
  #     j--;     
 
 ##############################################################  

 addi $s1,$s1,4   # Initialising $s1 to 4
 addi $s2,$s2,3   # Initialising $s2 to 3
 bne $s1,$s2,L1   # if $s1!=$s2 go to label L1
 addi $s1,$s1,1     
 L1:addi $s2,$s2,-1  # value of register $s2 is decremented

 li $v0,1      # Loading system call code into register $vo
              # Code for printing integer is 1

 move $a0,$s2  # move integer to be printed into $a0: $a0=$s1  
 syscall      # calling Operating system to perform operation
