class TreeBuilder

  require 'tree'

  def generate_project(name)
    Tree::TreeNode.new(name, id: 1, type: "Project", root_folder_id: 1)
  end

  def generate_files(count)
    file_nodes = []
    count.times do |i|
      file_nodes << Tree::TreeNode.new("File" + i.to_s, id: i, media_url: "example.com", type: "File", folder_id: nil)
    end

    return file_nodes
  end

  def generate_folders(count)
    folder_nodes = []
    count.times do |i|
      folder_nodes << Tree::TreeNode.new("Folder"+ i.to_s, id: i, type: "Folder", parent_folder_id: nil)
    end

    return folder_nodes
  end

end
