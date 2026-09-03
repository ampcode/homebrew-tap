class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788422439-g3b0913"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788422439-g3b0913/amp-darwin-arm64"
      sha256 "ff03fde809ab265a5a6ff1a06113ad114e25bbc237c349193e940a56879c1c60"
    else
      url "https://static.ampcode.com/cli/0.0.1788422439-g3b0913/amp-darwin-x64"
      sha256 "4380ed331196a9697541118d35ab40ab13515cd18ad436cce4ffebcf8bca37bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788422439-g3b0913/amp-linux-arm64"
      sha256 "a2a656da3c441f8fb5d6b828be4e1ab0002bd5e2c0ce27be1ff8505d38236c81"
    else
      url "https://static.ampcode.com/cli/0.0.1788422439-g3b0913/amp-linux-x64"
      sha256 "20042823c2ae13a044856a4d2a25bc218962b4ffa170558bf96cd0d88e8c53b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
