require_relative 'tree_builder'

# Create objects

tree_builder = TreeBuilder.new

project = tree_builder.generate_project('MyProject')
files = tree_builder.generate_files(3)
folders = tree_builder.generate_folders(4)

# Construct a tree

project << files[0]
project << files[1]
project << folders[0] << folders[1] << folders[2] << folders[3] << files[2]

# Print tree to output

project.print_tree

puts tree_builder.list_subfolders(project).count
