class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794585642-g3af916"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794585642-g3af916/amp-darwin-arm64"
      sha256 "41890cf6a27f49b24e6e0d6733f41b607808e12372ef7c2c5395da70ef14922d"
    else
      url "https://static.ampcode.com/cli/0.0.1794585642-g3af916/amp-darwin-x64"
      sha256 "9d3e6c017f76f13b89c67d7d5b9c881771b1c4b5dbd8dc02d58e10efc511b859"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794585642-g3af916/amp-linux-arm64"
      sha256 "4f1c6b70c837b6cd70995c21528bb5a3869e05a5d6a129226121a01ce596add9"
    else
      url "https://static.ampcode.com/cli/0.0.1794585642-g3af916/amp-linux-x64"
      sha256 "b4e44d7b404da1aed78a0289a0c1005f2567191a9607d1ec07b82595f14f0a00"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
