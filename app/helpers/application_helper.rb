module ApplicationHelper
  def display_banner(zone, options = {})

    zone_id = Zone.find_by_name(zone).id
    unless options[:banner].nil?
      banner_id = Banner.find_by_name(options[:banner]).id
    end

    unless options[:banner].nil?
      # 'request_url' here should be request url with zone id and banner id
      <<-JS
        $(document).ready(
          $.ajax({
            type: 'GET',
            url: 'request_url'
            data: 'zone_id=' + #{zone_id} + '&banner_id=' + #{banner_id} 
          });
        )
      JS
      # in '#' should be url to ad link,
      # in image_tag path to image
      # in 'url' hit request url,
      link_to(image_tag(''), '#',
        :onclick => "
          $.ajax({
            type: 'GET',
            url: 'hit_request_url'
            data: 'zone_id=' + #{zone_id} + '&banner_id=' + #{banner_id} 
           });
        "
      )
    else 
      <<-JS
        $(document).ready(
          $.ajax({
            type: 'GET',
            url: 'request_url'
            data: 'zone_id=' + #{zone_id} 
          });
        )
      JS
      link_to(image_tag(''), '#',
        :onclick => "
          $.ajax({
            type: 'GET',
            url: 'hit_request_url'
            data: 'zone_id=' + #{zone_id}
           });
        "
      )
    end
  end
end
