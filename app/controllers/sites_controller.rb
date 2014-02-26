class SitesController < ApplicationController
  def index
  all_cats = Category.all 
  @all_cats_alpha = all_cats.sort_by!{ |f| f.name.downcase } 
  @contents = Content.all
  cats = @all_cats_alpha
  div = cats.length/3
  div_two = div * 2
  div_three = div * 3
  @a = cats[0..(("#{div}".to_i)-1)]
  @b = cats[(("#{div}".to_i))..(("#{div_two}".to_i)-1)]
  @c = cats[(("#{div_two}".to_i)-1)..(("#{div_three}".to_i))]
  end
end
