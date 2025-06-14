(01)Print Multiplication table using for loop
1 x 2 = 2
2 x 2 = 4
.....
echo 'Enter the number that you want to get multiplication table:'  # Prompt user to enter the number
read num  # Read and store the number

for((i=1;i<=12;i++))
do
mul=$(($num*$i))  # Create the multiplicaion
echo "$num x $i = $mul" # Display the result
done
[2021ict10@fedora ~]$ chmod 777 multable.sh
[2021ict10@fedora ~]$ ./multable.sh
Enter the number that you want to get multiplication table:
5
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
5 x 4 = 20
5 x 5 = 25
5 x 6 = 30
5 x 7 = 35
5 x 8 = 40
5 x 9 = 45
5 x 10 = 50
5 x 11 = 55
5 x 12 = 60
[2021ict10@fedora ~]$ ./multable.sh
Enter the number that you want to get multiplication table:
2
2 x 1 = 2
2 x 2 = 4
2 x 3 = 6
2 x 4 = 8
2 x 5 = 10
2 x 6 = 12
2 x 7 = 14
2 x 8 = 16
2 x 9 = 18
2 x 10 = 20
2 x 11 = 22
2 x 12 = 24

(02)
(I)
        *
       *** 
      *****
     *******
    *********
     *******
      *****
       ***
        *
(II)
      *****
      *   *
      *   *
      *   *
      *****
2021ict10@fedora ~]$ touch starpattern.sh
[2021ict10@fedora ~]$ vi starpattern.sh
#Number of rows(half of the diamond's height)	  
rows=5

#Top half of the diamond

for((i=1;i<=rows;i++))
do
for((j=i;j<rows;j++))
do
echo -n " "
done
for((k=1;k<=((2*i-1));k++))
do
echo -n "*"
done 
echo
done
#Bottom half of the diamond
for((i=rows-1;i>=1;i--))
do
for((j=rows;j>i;j--))
do
echo -n " "
done
for((k=1;k<=((2*i-1));k++))
do
echo -n "*"
done 
echo
done
2021ict10@fedora ~]$ chmod 777 starpattern.sh
[2021ict10@fedora ~]$ ./starpattern.sh
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
rows=5  # Set the number of rows (and columns) for the square

# Outer loop to handle the number of rows
for ((i=1; i<=rows; i++))
do
    # Inner loop to handle the number of columns
    for ((j=1; j<=rows; j++))
    do
	
	# Check if the current position is on the border
        if [[ $i -eq 1 || $i -eq $rows || $j -eq 1 || $j -eq $rows ]]
        then
            echo -n "*"  # Print a star without a newline
        else
            echo -n " "   # Print a space without a newline (inside of the square)
        fi
    done
    echo  # Move to the next line after each row
done


(03)
Fibonacci series
# 0 1 1 2 3 5 8 13 21 34
Sum of first 10 fibonacci numbers:88

a=0          # First number in the Fibonacci sequence
b=1          # Second number in the Fibonacci sequence
sum=0        # Variable to store the sum of the Fibonacci numbers

echo 'First 10 Fibonacci numbers'

# Loop to generate the first 10 Fibonacci numbers
for ((i=1; i<=10; i++))
do
  echo $a              # Print the current Fibonacci number
  echo " "             # Print a blank line (optional — can be removed)

  sum=$((sum + a))     # Add the current number to the sum

  c=$((a + b))         # Compute the next Fibonacci number
  a=$b                 # Update a to previous b
  b=$c                 # Update b to the new value (next in sequence)
done

echo "Summation: $sum"  # Display the total sum of the 10 numbers
(04)Sum of prime numbers between 1 and 100 is: 1060

sum=0  # Initialize the sum of prime numbers to 0

# Loop through numbers from 2 to 100
for (( num=2; num<=100; num++ ))
do
    is_prime=1  # Assume the number is prime initially

    # Check if the number is divisible by any number from 2 to sqrt(num)
    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 ))  # If num is divisible by i, it's not prime
        then
            is_prime=0        # Mark as not prime
            break             # Exit the loop early
        fi
    done

    # If the number is prime, add it to the sum
    if (( is_prime == 1 ))
    then
        sum=$((sum + num))
    fi
done

# Print the final sum of all prime numbers from 2 to 100
echo "Sum of prime numbers between 1 and 100 is: $sum"

		


