class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778568214-g18c770"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778568214-g18c770/amp-darwin-arm64"
      sha256 "ed1442ce629bdf9c760b988aaa874115f2b7432de0bf4f964633beffed0f0b0f"
    else
      url "https://static.ampcode.com/cli/0.0.1778568214-g18c770/amp-darwin-x64"
      sha256 "93902c1e29acae637e34919bf9e772b4b6475fc57fdf7950d6763ac362521cc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778568214-g18c770/amp-linux-arm64"
      sha256 "9d8302f30e8db65797b6476f843561cfe86fbd984b8d0257e529a33ce2f56e60"
    else
      url "https://static.ampcode.com/cli/0.0.1778568214-g18c770/amp-linux-x64"
      sha256 "9c94a7b61ea6f5744adfaf4ea9adb3dd09490639c657fa9c61efaa91cc7382eb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
