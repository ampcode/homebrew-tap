class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783758721-g462a93"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783758721-g462a93/amp-darwin-arm64"
      sha256 "0cb20071a8e7695472e608c15fa1c6fec1cfd9c08cba72af1f356a36c9ce518a"
    else
      url "https://static.ampcode.com/cli/0.0.1783758721-g462a93/amp-darwin-x64"
      sha256 "71c19395911f11089b89d7b0cc70662ee69465d158c5ee81e67c71f8c7da9312"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783758721-g462a93/amp-linux-arm64"
      sha256 "902665357b18d7def67c19bd1c3def9afe49d01f13afe4ed80526576cbcce6a9"
    else
      url "https://static.ampcode.com/cli/0.0.1783758721-g462a93/amp-linux-x64"
      sha256 "373cf82df3de5da015142a61662eadabcd24438fca4fb67678b9fe778c032618"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
