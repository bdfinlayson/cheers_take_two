# cheers_take_two
The ruby cheers exercise (see: bdfinlayson/ruby-cheers), this time three weeks into learning Ruby, with tests!

## Instructions

## Specifications, for non-interactive version of cheers
(How the program works)

Start the program by running `./cheers.rb Abby 08/25`

The first argument is the user's name. The second argument is the user's birthday.

The program outputs a cheer in the following format:

> Give me an... A

> Give me a... B

> Give me a... B

> Give me a... Y

> ABBY’s just GRAND!

* Should follow the proper grammatical rules for “a” vs. “an”, based on whether the first letter of the name is a vowel.
* Ignore all special characters (i.e. non-word characters) when printing the cheer (e.g., "Give me a...")
* Print the user's name out as it was originally inputted for the "just GRAND" line

If there was no input, the program would instead print out:

> I'd cheer for you, if only I knew who you were :(

> Try again with `./cheers [Name] [MM/DD Birthday]`

After printing out the user's cheer, the program asks:

> Hey, Bryan, what's your birthday? (mm/dd)

The user types in their birthdate

> 08/25

* If there was no input, asks again until valid input is provided
* If there was input that couldn't be parsed, the program prompts:

> I couldn't understand that. Could you give that to me in mm/dd format?

The proram then outputs the number of days until the user's birthday

> Awesome! Your birthday is in 45 days! Happy Birthday in advance!

## Specifications, for interactive part
(How the program works)

Start the program by running `./cheers.rb`

The program should ask:

> Hello, what is your name?

The user types in their name, for example:

> Bryan

The program outputs a cheer in the following format:

> Give me an... A

> Give me a... B

> Give me a... B

> Give me a... Y

> ABBY’s just GRAND!

> When given the input of “Abby”.

* Should follow the proper grammatical rules for “a” vs. “an”.
* Ignore all special characters (i.e. non-word characters) when printing the cheer (e.g., "Give me a...")
* Print the user's name out as it was originally inputted for the "just GRAND" line
* If there was no input, ask for the user's name again


After printing out the user's cheer, the program asks:

> Hey, Bryan, what's your birthday? (mm/dd)

The user types in their birthdate

> 08/25

* If there was no input, asks again until valid input is provided
* If there was input that couldn't be parsed, the program prompts:

> I couldn't understand that. Could you give that to me in mm/dd format?

The proram then outputs the number of days until the user's birthday

> Awesome! Your birthday is in 45 days! Happy Birthday in advance!



