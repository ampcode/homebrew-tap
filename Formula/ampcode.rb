class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789041665-g2b79fa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789041665-g2b79fa/amp-darwin-arm64"
      sha256 "61d6c28ace23c05e79e469a8503f293a76a608877a1c2fe5c4edfd602953f3f3"
    else
      url "https://static.ampcode.com/cli/0.0.1789041665-g2b79fa/amp-darwin-x64"
      sha256 "81cac4afb14037542872bb577557348b4600e0b87d8f29b5562ab8b54ceea0cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789041665-g2b79fa/amp-linux-arm64"
      sha256 "af7cc4f6d73d866e33a7ced201ecd176dff2c727ac1350dfb5f789b28ddf7819"
    else
      url "https://static.ampcode.com/cli/0.0.1789041665-g2b79fa/amp-linux-x64"
      sha256 "989764a0e7b508747aabea6a49b57b9d9654e1a3f830cb56b952e455af47db3a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
