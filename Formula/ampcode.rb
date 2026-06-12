class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781286959-gafa19c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781286959-gafa19c/amp-darwin-arm64"
      sha256 "88bb1273a35ed2d17baa397fa67701e0ef4810e4e8965d2ba72ecf3ae630c455"
    else
      url "https://static.ampcode.com/cli/0.0.1781286959-gafa19c/amp-darwin-x64"
      sha256 "29de28e355f8a0cdb7084a5629831ef33974d0e9b1a4116a83054bb492d48513"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781286959-gafa19c/amp-linux-arm64"
      sha256 "149894703fcc147be6599c117ad3acd526858c250f5658786592060cba658c6f"
    else
      url "https://static.ampcode.com/cli/0.0.1781286959-gafa19c/amp-linux-x64"
      sha256 "fdae103d67cf38bcefcae13d19b21689b905fb472ee282116e5a78ad12af1049"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
