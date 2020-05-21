module LastfmSync
  class DownloadArtists
    def initialize(username)
      @username = username
      @client = Lastfm.new(Settings.lastfm.api_key, Settings.lastfm.api_secret)
    end

    def download
      username
    end

    private

    attr_reader :username
  end
end
