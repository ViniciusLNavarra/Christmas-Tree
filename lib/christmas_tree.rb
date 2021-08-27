# frozen_string_literal: true

class ChristmasTree
  TREE_CHARACTER = 'X'
  def draw(height, stand=false, star=false)
    i = 1
    treestr = ""
    if (star)
      treestr += ' ' * (height - 1) + '*' + ' ' * (height - 1) + "\n"
    end
    until i > height
      treestr += ' ' * (height - i) + TREE_CHARACTER * (2 * i - 1) + ' ' * (height - i) + "\n"
      i += 1
    end
    if (stand)
      treestr += ' ' * (height - 1) + '|' + ' ' * (height - 1) + "\n"
    end
    puts treestr
    return treestr
  end
end
