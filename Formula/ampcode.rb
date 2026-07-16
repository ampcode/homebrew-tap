class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784219219-g3e9560"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784219219-g3e9560/amp-darwin-arm64"
      sha256 "903f3f11718fa9ac2f9d192d43c145e67164b138213f17b687a6ce8fe4815a99"
    else
      url "https://static.ampcode.com/cli/0.0.1784219219-g3e9560/amp-darwin-x64"
      sha256 "ad49701ec0a5c599a4acd09c59870f58fa49dbeb693a42ea6680cdc8e8456089"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784219219-g3e9560/amp-linux-arm64"
      sha256 "0ef4d1b0d9f7abd06fc52e24c6fbeb0d985249e90f2850d2d8cf3d5c4d378a55"
    else
      url "https://static.ampcode.com/cli/0.0.1784219219-g3e9560/amp-linux-x64"
      sha256 "aba3da1d93010901a76e28c419d4d193b96a3d561e4983408a61529e1eebc6eb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
