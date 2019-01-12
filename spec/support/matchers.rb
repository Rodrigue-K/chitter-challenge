RSpec::Matchers.define :appear_before do |later_post|
  match do |earlier_post|
    begin
      page.body.index(earlier_post) < page.body.index(later_post)
    rescue ArgumentError
      raise "Could not locate later post on page: #{later_post}"
    rescue NoMethodError
      raise "Could not locate earlier post on page: #{earlier_post}"
    end
  end
end
