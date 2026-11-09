class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794254441-g4541a6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794254441-g4541a6/amp-darwin-arm64"
      sha256 "28894a97e9d20f6bd234304073fb07078018f9ccc70d08bdedbeb16877f31e1a"
    else
      url "https://static.ampcode.com/cli/0.0.1794254441-g4541a6/amp-darwin-x64"
      sha256 "52c42aedf665f3b0d39eb46f73ea21157ef65cd9ee75e58fb1a58ce3bae1c881"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794254441-g4541a6/amp-linux-arm64"
      sha256 "5e526d493d88f3f7ff294f5a52e4e7435668447e96b240a56ed5fe0c5d39cea2"
    else
      url "https://static.ampcode.com/cli/0.0.1794254441-g4541a6/amp-linux-x64"
      sha256 "1edef8e35d1af38a78bd17114f84d3e6c0207f6813ae0a403b7bde9987397f03"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
