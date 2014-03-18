module ApplicationHelper
    def tag_cloud(tags, classes)
      max = tags.sort_by(&:count).last
      tags.each do |tag|
        index = tag.count.to_f / max.count * (classes.size - 1)
        yield(tag, classes[index.round])
      end
    end
    def build_categories
      cates = Category.all
      cates.each do |c|
        yield(c,c.name)
      end
    end
end
