module LastfmSync
  class DownloadArtists
    def initialize(username)
      @username = username
    end

    def download
      username
    end

    private

    attr_reader :username
  end
end
