<select id="author_id" name="author_id" type="text">
  <% @authors.each do |author| %>
    <option value="<%=author.id%>"><%= author.name%></option>
  <% end %>
</select>
