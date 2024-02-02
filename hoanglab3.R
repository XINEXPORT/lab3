# Christine Hoang

#Create a vector of pirate captain names.You can use any names you like, but make sure you have 5 or more names in your vector. 
#The first vector value should be your first name.
pirate_names<-c("Christine", "Blue Eye", "Red Beard", "Black Bear", "Jack Sparrow")
pirate_names

#Create a second vector or crew sizes. 
#This vector should contain the number of crew members for each captain you named in the previous step. 
#At least one value in the CrewSize vector should be bigger than 5.
crew_size<-c("4", "8", "12", "16", "20")
crew_size

#Create a data frame named ships where the first column stores the captain’s name, and the second column stores the crew sizes. 
#Give the first column the name of Captain and the second column the name of CrewSize.
ships_df <- data.frame(
  Captain = pirate_names,
  Crewsize = crew_size
)
#Display the data frame on the console. It should have 2 columns and 5 rows. The first row’s value in the Captain column should be your name.
ships_df

#Use the single bracket selector to select the column named CrewSize, (position 2).
ships_df[2]

#Use the $ selector to select the vector for the column named Captain.
ships_df$Captain

#Use the rbind() function to add a row for another captain and crew size, 
#when you do use a list, not a vector to store the data for the row.
ships_df <- rbind(ships_df, 
                  list("Grey Beard", 5))

#Code a For Loop that loops through all values in the vector for the CrewSize column.
#Within the loop code a statement that prints each crew size value to the console. 
#Make sure the loop runs properly.  Make sure your values only print once. 
#In the instructor file I show you two different ways you can do this.
for(i in 1:length(ships_df))
{
  print(ships_df[i])
}

#Create a vector that is called yourlastname, substituting your last name. 
#The vector should have 5 text values in it. It can be anything you like: sports teams, dog breeds, types of tea, etc.
hoang<-c("sin", "tri", "squar", "saw", "wav")
hoang

#Print the value in the 4th position of vector, using a single bracket selector.
hoang[4]

#Code a For Loop with an IF statement that prints the third value, (whatever that is).
for (i in 1: length(hoang)) {
  if (i == 3) {
    print (hoang[i])
  } else {
    print ("Not Third Value")
  }
}

#Create a custom function that has one argument. The function should be called welcome_message. 
#The function should take one parameter and print a message to the console that uses the parameter and includes some other text. 
#The message can be anything you choose, but it must use the name that is passed to the welcome_message function.  
#Use the Paste function like we did in lab1 to print your message.  Here’s a hint.

#print( paste("some text", parameter, “some more text”))
#Make sure and test the function.

welcome_message<-function(i){
  print(paste("Hi-diddly-ho", i, "norino"))
}

welcome_message("Christine")


#Create a function called subract_and_multiply() that accepts two numbers as arguments.
#Inside the function’s brackets subtract the first number from the second number and store the result in a variable. 
#Also multiply the first number and the second number and store the result in a second variable. 
#Finally print two lines inside the function. The first line should look something like this:

subract_and_multiply<-function(firstnumber, secondnumber){
  first_var<-secondnumber-firstnumber
  second_var<-secondnumber*firstnumber
  
  print(paste("secondnumber subtracted from the firstnumber", "=",
              first_var))
  print(paste("firstnumber multiplied by the secondnumber", "=",
              second_var))
}

subract_and_multiply(-3,3)


#demo code
cats_names<-c('fluffy', 'demon', 'fatso', 'stripe')
weight <-c(9,11,16,12)
cat_weights <-data.frame(name_of_cat=cats_names, weight_of_cat=weight)
cat_weights
cat_weights[2]
cat_weights$name_of_cat
cat_weights <-rbind(cat_weights, list("spike", 10))
#vectors has to have the same datatypes across all values

for(i in 1:length(cat_weights))
{
  print(cat_weights[i])
}


for(i in 1:length(cat_weights))
{
  if(i == 3){
    print(cat_weights[i])
  }
}

#print the columns of cat weights
for(i in 1:2)
{
  print(cat_weights[i])
}

#write a function
welcome_message<-function(First_name){
  First_name = "Christine"
  print(paste("hello", First_name, "this is a welcome message"))
}

welcome_message()
