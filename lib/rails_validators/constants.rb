module RailsValidators
  module Constants
    EMAIL_REGEX = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

    # Source: https://github.com/henrik/validates_url_format_of
    # Improves: https://github.com/fnando/validators
    IPv4_PART = /\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]/  # 0-255

    if RUBY_VERSION >= "1.9"
      URL_REGEX = %r[
        \A
        https?://                                                    # http:// or https://
        ([^\s:@]+:[^\s:@]*@)?                                        # optional username:pw@
        ( (([^\W_]+\.)*xn--)?[^\W_]+([-.][^\W_]+)*\.[a-z]{2,6}\.? |  # domain (including Punycode/IDN)...
            #{IPv4_PART}(\.#{IPv4_PART}){3} )                        # or IPv4
        (:\d{1,5})?                                                  # optional port
        ([/?]\S*)?                                                   # optional /whatever or ?whatever
        \Z
      ]ixs
    else
      URL_REGEX = %r[
        \A
        https?://                                                    # http:// or https://
        ([^\s:@]+:[^\s:@]*@)?                                        # optional username:pw@
        ( (([^\W_]+\.)*xn--)?[^\W_]+([-.][^\W_]+)*\.[a-z]{2,6}\.? |  # domain (including Punycode/IDN)...
            #{IPv4_PART}(\.#{IPv4_PART}){3} )                        # or IPv4
        (:\d{1,5})?                                                  # optional port
        ([/?]\S*)?                                                   # optional /whatever or ?whatever
        \Z
      ]ixu
    end
  end
end
