       <div class="content_post">
         <% if user_signed_in? && current_user.id == tweet.user_id %>
            <%= link_to '削除', "/tweets/#{tweet.id}", method: :delete %>
              <%= link_to '編集', "/tweets/#{tweet.id}/edit", method: :get %>
         <% end %>
          <%= simple_format(tweet.text) %>
           <span class="name">
              <p href="">
              <span>投稿者</span><%= tweet.user.nickname %>
              </p>
              <p href="">
              <span>投稿時間</span><%= tweet.created_at.strftime("%Y-%m-%d %H:%M:%S") %>
              </p>
            </span>
        </div>
      <% end %>
    </div>
