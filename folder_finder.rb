require_relative 'node_tree'
require 'json'

# Create objects

node_tree = NodeTree.new

project = node_tree.generate_project('MyProject')
files = node_tree.generate_files(3)
folders = node_tree.generate_folders(4)

# Construct a node_tree

project << files[0]
project << files[1]
project << folders[0] << folders[1] << folders[2] << folders[3] << files[2]

# Print node_tree to output

project.print_tree

# Find all subfolders for project and return them as JSON

result = node_tree.list_subfolders(project)
puts JSON.generate( { folders: result } ).inspect
