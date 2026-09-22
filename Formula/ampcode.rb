class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790050782-g762806"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790050782-g762806/amp-darwin-arm64"
      sha256 "5ca11426c244c1b76dc59a8463850cd7276fea2d0ef458de98390498fca71869"
    else
      url "https://static.ampcode.com/cli/0.0.1790050782-g762806/amp-darwin-x64"
      sha256 "e32c663b49eb8c4f92749acd220b2a167bc4c4c7994b812172cb24ea7fd99894"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790050782-g762806/amp-linux-arm64"
      sha256 "8f1f8f14617868beb1a21e29387327e6521c9f42a327cbee9c1c9a3cf5a53067"
    else
      url "https://static.ampcode.com/cli/0.0.1790050782-g762806/amp-linux-x64"
      sha256 "ec532564bae474e77e8714425beb28d5af3e5e0b6602caa86af0377d42885d49"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
