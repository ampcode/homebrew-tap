class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790078445-g3dd8f6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790078445-g3dd8f6/amp-darwin-arm64"
      sha256 "978c2b467e90f869da85b9d03bb9a145d8b4b4e80ccf92d26b79171018fc4792"
    else
      url "https://static.ampcode.com/cli/0.0.1790078445-g3dd8f6/amp-darwin-x64"
      sha256 "dede62bdfeae992e375709c26b484145bf9145c424f14b0e9f3a5222226c1503"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790078445-g3dd8f6/amp-linux-arm64"
      sha256 "d193bdb26d550729f1f173bd183f8c4f606d1378b92d91e9b3e853dd0fe6144e"
    else
      url "https://static.ampcode.com/cli/0.0.1790078445-g3dd8f6/amp-linux-x64"
      sha256 "e2175f89f8edfdafafbb83d61989c84cf9375c63c66148bd2a1ce43f46d2a5f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
