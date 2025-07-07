
echo "Hello, welcome to the guessing game. Please guess how many items are in the directory."
dirsize=$(ls -1 . | wc -l)
x=1
function calculate {
    if [[ $1 -eq $dirsize ]]; then
        echo "Congrats, you got the directory size correct!"
        x=0
    elif [[ $1 -gt $dirsize ]]; then
        echo "The number you guessed was too high!"
    elif [[ $1 -lt $dirsize ]]; then
        echo "The number you guessed is too low, try again."
    fi
}
while [[ $x -eq 1 ]]
do
    read -p "Enter your guess: " guess
    calculate "$guess"
done

