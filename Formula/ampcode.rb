class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779296280-g014378"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779296280-g014378/amp-darwin-arm64"
      sha256 "c677caed90292c56c656102238b142a4c479d42bc7f1ae587e9199ceac66c403"
    else
      url "https://static.ampcode.com/cli/0.0.1779296280-g014378/amp-darwin-x64"
      sha256 "e1b91de3aa57b361d34391e96ed103a61b107dee296a0fb06420ffa4c37bb83e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779296280-g014378/amp-linux-arm64"
      sha256 "f6392c39d6201e3b1d75f7d56ea1c5e48a91f8e3ac17dbb6306100bbf409341d"
    else
      url "https://static.ampcode.com/cli/0.0.1779296280-g014378/amp-linux-x64"
      sha256 "b90feeb5fb6fe060f4daa4474dd7969e1691d32590e401dbe8646f42d1a15122"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
