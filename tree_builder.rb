class TreeBuilder

  require 'tree'


  # Returns a single project node
  def generate_project(name)
    Tree::TreeNode.new(name, id: 1, type: "Project", root_folder_id: 1)
  end

  # Returns an array of file nodes
  def generate_files(count)
    file_nodes = []
    count.times do |i|
      file_nodes << Tree::TreeNode.new("File" + i.to_s, id: i, media_url: "example.com", type: "File", folder_id: nil)
    end

    return file_nodes
  end

  # Returns an array of folder nodes
  def generate_folders(count)
    folder_nodes = []
    count.times do |i|
      folder_nodes << Tree::TreeNode.new("Folder"+ i.to_s, id: i, type: "Folder", parent_folder_id: nil)
    end

    return folder_nodes
  end

  # List contents...
  def list_subfolders(root_source)
    subfolders = []
    root_source.children do |node|
      if node.content[:type] == "Folder" # ...only if it's a folder...
        subfolders << node
        subfolders.concat list_subfolders(node) # ..using recursion
      end
    end

    return subfolders
  end



end
