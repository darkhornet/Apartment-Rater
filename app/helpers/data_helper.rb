module DataHelper
  def show_data(object, field_name)
    unless object.send(field_name).blank?
      %Q{<dt><strong>#{object.class.human_attribute_name(field_name.to_sym)}:</strong></dt>
      <dd>#{object.send(field_name)}</dd>}.html_safe
    end
  end
end
