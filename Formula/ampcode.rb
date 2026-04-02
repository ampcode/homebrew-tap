class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775104924-gf4a665"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775104924-gf4a665/amp-darwin-arm64"
      sha256 "3f39d5c5e9c1dce6adb71f0f406bc0ffee5fc8e546a913542b7c4e4240fe81e0"
    else
      url "https://static.ampcode.com/cli/0.0.1775104924-gf4a665/amp-darwin-x64"
      sha256 "b47a5d1100f0afcfbd3737dda2dfa32a8795d7817a696d77b9982ad147b0c926"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775104924-gf4a665/amp-linux-arm64"
      sha256 "6f934e011d33e1858087b4f75e76024e646fb3674af66743ac576ce26b55faaa"
    else
      url "https://static.ampcode.com/cli/0.0.1775104924-gf4a665/amp-linux-x64"
      sha256 "9d002a348643a50293ea5e421a6602f029cf1944eeca83cad22e97be67be3cc2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
