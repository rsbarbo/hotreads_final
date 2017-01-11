class Read < ApplicationRecord

  def self.top_api
    top = find_ten.map { |url, hits| Hot.new(url: url, hits: hits)}.first(10)
    r = {url: []}
    top.each do |link|
      r[:url] << link.url
    end
    return r
  end

  def self.top_ten_reads_of_the_day
    find_ten.map { |url, hits| Hot.new(url: url, hits: hits)}.first(10)
  end

  def self.find_ten
    top_ten = all.where('created_at > ?', Time.now - 1.day).
    group(:url).count.sort_by{|k,v|v}.reverse.to_h
    return top_ten
  end
end
