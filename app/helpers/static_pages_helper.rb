require 'feed-normalizer'

module StaticPagesHelper

  def get_feed(list_num="")
    rss_url = 'http://grunwald-midori.hatenablog.com/rss'
    feed = FeedNormalizer::FeedNormalizer.parse(open(rss_url))

    # 記事リストアップ数に指定がない場合は取得したすべてをリストアップする
    entry_num = feed.entries.size - 1
    if list_num == ""
      list_num = entry_num + 1
    end

    # 配列数以上の記事をリストアップしたい場合は、配列数に合わせる
    if entry_num > list_num - 1
      entry_num = list_num - 1
    end

    data = Array.new(entry_num){ Array.new(2) }
    feed.entries[0..entry_num].each_with_index do |entry, index|
      data[index] = [entry.title, entry.content.gsub(/<\/p>|<.*?>/, "<\/p>" => "<%= tag('br') %>", "<.*?>" => "")]
    end
    data
  end

end
