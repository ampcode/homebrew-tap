class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795651259-g7cb875"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795651259-g7cb875/amp-darwin-arm64"
      sha256 "8939e75b4991889a1c0310be1cabec35493bda2e6a0887a377409b75d55c0f1c"
    else
      url "https://static.ampcode.com/cli/0.0.1795651259-g7cb875/amp-darwin-x64"
      sha256 "623aafdac5ab2b3d706ecc2722012c1856692465a70cd16aeba8c47f6b34c382"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795651259-g7cb875/amp-linux-arm64"
      sha256 "57fe5fc89f22f3325b0b92d8d72118aeaa5189a969c90a2a2a00bd2112d3a6fc"
    else
      url "https://static.ampcode.com/cli/0.0.1795651259-g7cb875/amp-linux-x64"
      sha256 "fad223542a2a169c06e0cd47760eeb3f58b772e2d32556e792673dc35f2a10f6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
