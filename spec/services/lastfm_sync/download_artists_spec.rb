describe LastfmSync::DownloadArtists do
  let(:username) { "xxpoiuxx" }
  let(:instance) { described_class.new(username) }

  describe "#download" do
    it "returns proper result" do
      expect(instance.download).to eq username
    end
  end
end
