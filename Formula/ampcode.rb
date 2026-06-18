class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781748643-ge56198"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781748643-ge56198/amp-darwin-arm64"
      sha256 "65c760cd0ae76e31b16eb7e2e31e31c39ea0d340e7b0ae14dba85fb509c88b87"
    else
      url "https://static.ampcode.com/cli/0.0.1781748643-ge56198/amp-darwin-x64"
      sha256 "590f8a069e0e535a069f4c72b55ad9c6595d05a999f308338e36f12bd55b4f77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781748643-ge56198/amp-linux-arm64"
      sha256 "c87d9c8c5633a72c055c6bb9927bd60ce4db3845cb9e42ff4383c4a7ca806ca1"
    else
      url "https://static.ampcode.com/cli/0.0.1781748643-ge56198/amp-linux-x64"
      sha256 "5646c69a5464664f9e186eec51380865e1053ee8f5f7de066ef96b8b8e61add7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
