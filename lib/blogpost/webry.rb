module Blogpost
  class Webry
    def self.post(opts={})
      opts = Blogpost.options.merge(opts)
      host="https://bblog.sso.biglobe.ne.jp/ap/xmlrpc"
      XMLRPC::Client.new2(host).call("metaWeblog.newPost", "", opts[:user], opts[:pass],
        {"title" => opts[:title],"description" => opts[:content]}, true)
    end
  end
end
