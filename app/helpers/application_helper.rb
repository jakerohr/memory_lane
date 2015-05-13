module ApplicationHelper
  def edit_item_text_link partial,item_idx
    link_to partial["item#{item_idx}".to_sym], edit_partial_item_path(partial,item_idx), :data=>{toggle:'modal',target:'#editItemTextModal'},:id=>"text-partial#{partial.id}-item#{item_idx}"
  end
end
