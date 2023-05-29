# Object Relations without AR : Article Code challenge
## Introduction
For this assignment, you will be working with a Magazine domain.

 

We have three models: Author, Article, and Magazine.

 

For our purposes, an Author has many Articles, a Magazine has many Articles, and Articles belong to both Author and Magazine.

 

Author - Magazine is a many to many relationship.

 

Note: You should draw your domain on paper or on a whiteboard before you start coding. Remember to identify a single source of truth for your data.

## Topics
Classes and Instances
Class and Instance Methods
Variable Scope
Object Relationships
Arrays and Array Methods


## Project Setup
Once you have the plan in place for the application you want to build take the following steps:

Create a new project folder
Create a new GitHub repository (NB: ENSURE IT IS PRIVATE).
Add your TM as a contributor to the project. (This is only for grading purposes. We promise we won't steal your code)
Please make sure you regularly commit to the repository.


# Instructions
Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

Remember! This code challenge does not have tests. You cannot run rspec and you cannot run learn. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices. Examples of best practices might be to use higher-level array methods such as map, select, and find when appropriate in place of each, or, when you encounter duplicated logic, to extract it into a shared helper method.

Before you submit! Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

 

## Deliverables
Create the following classes and their respective methods.

Setup your application so it runs from a configured run file. 

Create instances of the classes on the run file and try out the methods you just created.

Use the notation # for instance methods, and .(dot) for class methods.

Feel free to build out any helper methods if needed.

 

## Initializers, Readers, and Writers
Author
Author#initialize(name)
An author is initialized with a name, as a string.
A name cannot be changed after it is initialized.
Author#name
Returns the name of the author
Magazine
Magazine#initialize(name, category)
A magazine is initialized with a name as a string and a category as a string
The name and category of the magazine can be changed after being initialized.
Magazine#name
Returns the name of this magazine
Magazine#category
Returns the category of this magazine
Magazine.all
Returns an array of all Magazine instances
Article
Article#initialize(author, magazine, title)
An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
An article cannot change its author, magazine, or title after it has been initialized.
Article#title
Returns the title for that given article
Article.all
Returns an array of all Article instances
 

## Object Relationship Methods
Article
Article#author
Returns the author for that given article
Article#magazine
Returns the magazine for that given article
Author
Author#articles
Returns an array of Article instances the author has written
Author#magazines
Returns a unique array of Magazine instances for which the author has contributed to
Magazine
Magazine#contributors
Returns an array of Author instances who have written for this magazine
 

## Associations and Aggregate Methods
### Author
Author#add_article(magazine, title)
Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
Author#topic_areas
Returns a unique array of strings with the categories of the magazines the author has contributed to

### Magazine
Magazine.find_by_name(name)
Given a string of magazine's name, this method returns the first magazine object that matches
Magazine#article_titles
Returns an array strings of the titles of all articles written for that magazine
Magazine#contributing_authors
Returns an array of authors who have written more than 2 articles for the magazine









# Magazine Article 
A Ruby application for tracking magazine articles and their authors.

## Description

This application allows you to create and track magazine articles and their authors. You can create instances of Author, Magazine, and Article classes, and use their respective methods to get information about the articles and authors, as well as their relationships.

## Getting Started

To run this program, you will need to have Ruby installed on your system.

Clone this repository to your local machine.
`https://github.com/oyieroyier/articles_code_challenge`

Navigate to the project directory in your terminal. 
Run `bundle install`command to install the necessary dependencies.

* To start the program, run the following command:
`ruby bin/run`

There are some already created instances in bin/run(used for testing purposes).

You can create instances of Author, Magazine, and Article classes, and use their respective methods to get information about the articles and authors, as well as their relationships.

## Usage

The program provides the following classes and methods:

### Author
An author is initialized with a name, as a string. A name cannot be changed after it is initialized.

#### Instance Methods
* #name: Returns the name of the author
* #articles: Returns an array of Article instances the author has written
* #magazines: Returns a unique array of Magazine instances for which the author has contributed to
* #add_article(magazine, title): Given a magazine (as a Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
* #topic_areas: Returns a unique array of strings with the categories of the magazines the author has contributed to

### Magazine
A magazine is initialized with a name as a string and a category as a string. The name and category of the magazine can be changed after being initialized.

#### Instance Methods
* #name: Returns the name of this magazine
* #category: Returns the category of this magazine
* #contributors: Returns an array of Author instances who have written for this magazine
* #article_titles: Returns an array string of the titles of all articles written for that magazine

#### Class Methods
* self.all: Returns an array of all Magazine instances
* self.find_by_name(name): Given a string of magazine name, this method returns the first Magazine object that matches

### Article
An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string. An article cannot change its author, magazine, or title after it has been initialized.

#### Instance Methods
* #title: Returns the title for that given article
* #author: Returns the author for that given article
* #magazine: Returns the magazine for that given article

#### Class Methods
* self.all: Returns an array of all Article instances

## Author 
[Bob Oyier](https://github.com/oyieroyier?tab=repositories)

## License
MIT License