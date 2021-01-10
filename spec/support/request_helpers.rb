module RequestHelpers
  def post(url, options = {})
    result = super(url, options)
    propagate_cookies_to_next_request
    result
  end

  def get(url, options = {})
    result = super(url, options)
    propagate_cookies_to_next_request
    result
  end

  def put(url, options = {})
    result = super(url, options)
    propagate_cookies_to_next_request
    result
  end

  def patch(url, options = {})
    result = super(url, options)
    propagate_cookies_to_next_request
    result
  end

  def head(url, options = {})
    result = super(url, options)
    propagate_cookies_to_next_request
    result
  end

  def delete(url, options = {})
    result = super(url, options)
    propagate_cookies_to_next_request
    result
  end

  private

  # By default cookies do not propagate to next requests.
  def propagate_cookies_to_next_request
    return unless response&.cookies

    keys = response.cookies.keys
    keys.each do |key|
      cookies[key] = response.cookies[key]
    end
  end
end

RSpec.configure do |config|
  config.include RequestHelpers, type: :request
end