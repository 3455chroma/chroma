module StourokusHelper
    def complete_item(stouroku)
        "<td>#{stouroku.genre.name}</td>"
        +"<td>#{stouroku.name}</td>"
        +"<td>#{stouroku.hito}</td>"
        +"<td>#{stouroku.hatsubaiday}</td>"
        +"<td>#{stouroku.tenpo}</td>"
        +"<td>#{stouroku.money}</td>"
        +"<td>#{stouroku.tokuten}</td>"
        +"<td>#{stouroku.user.name}</td>"
        +"<td>#{link_to '詳細', stouroku}</td>"
        +"<td>#{link_to '変更', edit_stouroku_path(stouroku)}</td>"
    end
end
