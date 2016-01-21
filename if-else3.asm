################################################################
  
  C code for which I have made MIPS code:-
  
  int i=5;
  int j=9;
  int k=5;
  
  if((i==j) || (i==k)){
  
       i++;
  
  }
  
  else{
   
      j--;
  
  }
  
  j=i+k;

  printf("%d",i);
  printf("%d",j);
  printf("%d",k);



################################################################
addi $s1,$s1,5          # i=5
addi $s2,$s2,9          # j=9
addi $s3,$s3,5          # k=5

beq $s1,$s2,IF            # Branch if i==j  

# In case of Or logical operator,short circuit happens even if one condition is true

bne $s1,$s3,ELSE          #  Branch if i!=k
 
IF: addi $s1,$s1,1        # if-body starts,i++

j NEXT                    # IF if-body has executed jump over else-body

ELSE: addi $s2,$s2,-1     # else-body,j--

NEXT: add $s2,$s1,$s3     # j=i+k

li $v0,1                  # Loading system call into register

add $a0,$s1,$zero         # Assigning $a0 value of $s1 to print value of i
syscall                   # Calling operating system to print

add $a0,$s2,$zero         # Assigning $a0 value of $s2 to print value of j
syscall                   # Calling operating system to print

add $a0,$s3,$zero         # Assigning $a0 value of $s3 to print value of k
syscall                   # Calling operating system to print




  
