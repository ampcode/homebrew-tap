class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790006436-gaf5042"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790006436-gaf5042/amp-darwin-arm64"
      sha256 "7cc924b1ccd6f1767327c06974e1aeec9e96d885606f1680f8bad7f85e2ac080"
    else
      url "https://static.ampcode.com/cli/0.0.1790006436-gaf5042/amp-darwin-x64"
      sha256 "ff8d9e4418548d2ef9185ee1889123a3f2d2d4a6399a3a5126f02d6d55872bcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790006436-gaf5042/amp-linux-arm64"
      sha256 "7a42dffef2926097459dea78006b9b4a8d214e2d79a6e7e38ce33b74de93b237"
    else
      url "https://static.ampcode.com/cli/0.0.1790006436-gaf5042/amp-linux-x64"
      sha256 "81b939c92d8305c642a6491b7bf1bc3900942ea362e4ca71f162c0b158be8f69"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
