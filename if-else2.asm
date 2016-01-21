###################################################################

    C code of corresponding MIPS code :-
    
        i=5
        j=9
        k=7
        
        if((i==j) && (i==k)){
          
           ++i;
        
        }
        
        else{
           
           j--;
          
        }
 
        j=i+k;



###################################################################

addi $s1,$s1,5          # i=5
addi $s2,$s2,9          # j=9
addi $s3,$s3,7          # k=7

bne $s1,$s2,ELSE        # condition 1 if !(i==j)
bne $s1,$s3,ELSE        # condition 2 if !(i==k)

addi $s1,$s1,1          # if-body

j NEXT                  # jump over else-body if if-body has executed

ELSE: addi $s2,$s2,-1   # else-body , j--

NEXT: add  $s2,$s1,$s3  # j=i+k 

li $v0,1                # loading system call into register $v0

add $a0,$s1,$zero       # Assigning $a0 value of $s1 to print value of i

syscall

add $a0,$s2,$zero       # Assigning $a0 value of $s2 to print value of j
syscall

add $a0,$s3,$zero       # Assigning $a0 value of $s3 to print value of k
syscall  

                        # Now we can exit our program.

li $v0, 10		# system call code for exit = 10
syscall		        # call operating sys



                                                                                                                                                                                      
