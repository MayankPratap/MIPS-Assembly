#############################################################
   
 # C code for which we are implementing MIPS code  

 # i=10
 # j=4
  
 # if(i==j)
 #   ++i
 # else
 #   j--
    
 # j+=i  
  
 # printf("%d",j);
    
############################################################


addi $s1,$s1,10   # i=10
addi $s2,$s2,4    # j=4

bne $s1,$s2,ELSE   # branch if i!=j
addi $s1,$s1,1    # i++

# If if has executed we do not want else to execute

j NEXT   # jump over else to NEXT label

ELSE: addi $s2,$s2,-1   # else j--

NEXT : add $s2,$s2,$s1

li $v0,1   # Loading system call mode into register $v0

add $a0,$s2,$zero  # Assigning $a0 value of $s2

syscall   # Calling Operating system to perform operation of print
