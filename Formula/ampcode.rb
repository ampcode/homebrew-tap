class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773533032-ge77255"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773533032-ge77255/amp-darwin-arm64"
      sha256 "cfc0e0b62aa257978d88eb03d78ac2367bdecebcb1cf33176579abaa208efc83"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773533032-ge77255/amp-darwin-x64"
      sha256 "f8a0677f3b3c99edc00699774ef833f8d32ae6b11f3a5fac2f9b930445fe4405"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773533032-ge77255/amp-linux-arm64"
      sha256 "23e5489ae08cc2248a05b49ed0c6b0f3fb78e401735971ed6a55a316f4513eae"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773533032-ge77255/amp-linux-x64"
      sha256 "e2a1ed15e1a0677b84bfb40ec61c7da2599d576a0fd2f8638eb8a41ca8a7ee2f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
