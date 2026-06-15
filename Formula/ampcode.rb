class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781524018-g95694d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781524018-g95694d/amp-darwin-arm64"
      sha256 "1fa1cfe7334b7eb8c0d7a0203a11e3c7361043d6c2908f7717a8c0d257305885"
    else
      url "https://static.ampcode.com/cli/0.0.1781524018-g95694d/amp-darwin-x64"
      sha256 "489905bd0f409836a6d018c20f62c9cd96a9c717c185418cdf5cd2501ecdd902"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781524018-g95694d/amp-linux-arm64"
      sha256 "0f24f066f36ce565dd79196cf17ec1b1f42df1de07d4cf472e9bee9937a55c7a"
    else
      url "https://static.ampcode.com/cli/0.0.1781524018-g95694d/amp-linux-x64"
      sha256 "22a2fdba80ef38d18248bff33cf48b49894f563843bc499de2884e973e96e66c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
