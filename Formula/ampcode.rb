class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795564863-gd17172"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795564863-gd17172/amp-darwin-arm64"
      sha256 "d92d2d67f43c1fe572258012567547507fe913eeb238e5117d14f6d8c739866a"
    else
      url "https://static.ampcode.com/cli/0.0.1795564863-gd17172/amp-darwin-x64"
      sha256 "f39e4fcaf55f3949775708e4e50ddb35824d6ddc376a71eea1615e9cc9d56ec9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795564863-gd17172/amp-linux-arm64"
      sha256 "d6c86794b3a92cb38c4c1923c0343cadce90881825171f0221bcbc61299ee471"
    else
      url "https://static.ampcode.com/cli/0.0.1795564863-gd17172/amp-linux-x64"
      sha256 "b657366b71e33478f9f413af75b90acaaef1437e5de4d5fda75a739bbdb2e0de"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
