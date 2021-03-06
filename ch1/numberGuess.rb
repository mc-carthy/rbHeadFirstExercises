puts('Welcome to number guesser!')
puts('==========================')
print('Please enter your name: ')
input = gets
name = input.chomp
puts("Welcome, #{name}!")

# Add 1 as rand(x) will give a number between 0 and x - 1
target = rand(100) + 1
puts("I have picked a random number between 1 and 100, can you guess it?")
num_guesses = 0
guessed_correct = false

while num_guesses < 10 && guessed_correct == false
    remaining_guesses = 10 - num_guesses
    puts("You have #{remaining_guesses.to_s} guesses remaining")

    guess = gets.to_i

    if guess < target
        puts("Your guess was too low! Try again!")
        num_guesses += 1
    elsif guess > target
        puts("Your guess was too high! Try again!")
        num_guesses += 1
    else
        puts("Your guess was correct! Well done #{name}!")
        puts("You guessed the number with #{num_guesses} attempts!")
        guessed_correct = true
    end
end

if guessed_correct == false
    puts("Sorry! The correct number was #{target.to_s}")
end