class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777731836-g1c1126"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777731836-g1c1126/amp-darwin-arm64"
      sha256 "c4eed0235fe56c4b3a66d8c2f5c5d4665447ea78250039baffb0a99a1c6414fa"
    else
      url "https://static.ampcode.com/cli/0.0.1777731836-g1c1126/amp-darwin-x64"
      sha256 "d574c1360968c74409933dd3f128712be62c2d04ededef00d0f76f06caef4a5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777731836-g1c1126/amp-linux-arm64"
      sha256 "aaa6c0fdb30bd154e4a546617bd816fab97b21a7ccb132e914def2feba078a6e"
    else
      url "https://static.ampcode.com/cli/0.0.1777731836-g1c1126/amp-linux-x64"
      sha256 "d16684ee87ddd312321970ee5f275778d9da177eebfc27708686dc94c27f98de"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
