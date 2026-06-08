class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780932011-gc0dbaf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780932011-gc0dbaf/amp-darwin-arm64"
      sha256 "53c77f5338c825376f3bac26bde3d20e299ba4c7768b62f4403cefa3a2eae21c"
    else
      url "https://static.ampcode.com/cli/0.0.1780932011-gc0dbaf/amp-darwin-x64"
      sha256 "d5296347c5c28cf135669e6ff6f93ba27369770cd2d9d7533863867e01959a9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780932011-gc0dbaf/amp-linux-arm64"
      sha256 "798d74c9d16c8670b042e74fe7f68e5e1562682d4bfed76afc0b0e902ac22036"
    else
      url "https://static.ampcode.com/cli/0.0.1780932011-gc0dbaf/amp-linux-x64"
      sha256 "365789fb590d4db3be389020e3ab2f5fa13183711a9e500ba238423198905a7c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
