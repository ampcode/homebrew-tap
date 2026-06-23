class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782200171-gf95b66"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782200171-gf95b66/amp-darwin-arm64"
      sha256 "7f3c2bb0efc8032a11392051136c2665bdcb031d6845d4958c9e3936d16c6210"
    else
      url "https://static.ampcode.com/cli/0.0.1782200171-gf95b66/amp-darwin-x64"
      sha256 "310781fadbbbead2416e4ba0418332fad745c70d8e4637ae51e5aa814c6d23cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782200171-gf95b66/amp-linux-arm64"
      sha256 "e51e46e49446afd6a60cdec3a5af57fe3ffadd4eb948a8d9b460cc782840b2bb"
    else
      url "https://static.ampcode.com/cli/0.0.1782200171-gf95b66/amp-linux-x64"
      sha256 "6acde645541c3f1d06565959c7f1530774afcad0453e5b14d21f3bd51f3d9b9f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
