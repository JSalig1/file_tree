# Background

----
Users are provided a means to store their video and other media assets in a structure that makes sense to them. All of their content is organized within a "project", and within each project files can be infinitely nested within folders.

To do so we use a model of a file system that is made up of the following schemas:

* **Project** (id, name, root\_folder\_id)
* **Files** (id, name, media\_url, folder\_id)
* **Folders** (id, name, parent\_folder\_id)

# Exercise

----
A new requirement has come in for us to build a folder picker that will list all of the folders (to an unlimited depth) for each of your projects.

**To do so we now need to implement a tree endpoint on our API that given a project's id, will return a list of folders inside of it.**

* For each project the endpoint should return child folders inside of it.
* The client can make additional requests per project, if necessary.
* The request must return valid JSON to be consumed.
* You do not need to implement any client side code.
* You are free to change the schema, if you feel it is necessary.
* You are free to implement multiple endpoints to solve the problem.

# Solution

----
Using **RubyTree** we can create Node objects and arrange them in a tree hierarchy as in a file system. By keeping track of what type of object each node representing is we can find all sub-folders to an infinite depth using recursion.

To run this demo clone this repo and install **RubyTree**

    $ gem install rubytree

See [RubyTree](https://github.com/evolve75/RubyTree) documentation for details on creating trees.

Then run:

    $ ruby folder_finder.rb

The script will do the following

1. Create nodes for one project,  and a collection of files and folders
2. Arrange them in a heirarchy
3. Print a visual representation of the hierachy
4. Return all (and only) folders within the project as JSON.

Since the list\_subfolders method uses recursion, you can alter the structure of the hierarchy in the second part and still get the same result.
