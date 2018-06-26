class Tree
  attr_accessor :children, :node_name

  def initialize(tree)
    tree = tree.to_a.first if tree.kind_of?(Hash)
    @children  = tree[1].map {|x| Tree.new(x) }
    @node_name = tree[0]
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block }
  end
  
  def visit(&block)
    block.call self
  end
end

def run
  source =  {
    'grandpa' => {
      'dad' => {
        'child 1' => {},
        'child 2' => {}
      },
      'uncle' => {
        'child3' => {},
        'child4' => {}
      }
    }
  }

  ruby_tree = Tree.new(source)

  puts "Visiting a node"
  ruby_tree.visit {|node| puts node.node_name }
  puts

  puts "Visiting entire tree"
  ruby_tree.visit_all {|node| puts node.node_name }
  puts
end

run
