class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794513636-g1096bf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794513636-g1096bf/amp-darwin-arm64"
      sha256 "90a5498da3ed6cfb248ae388e83fbdaf7d24670f5d6291cb19b2e7d52c5d41c1"
    else
      url "https://static.ampcode.com/cli/0.0.1794513636-g1096bf/amp-darwin-x64"
      sha256 "44b079c7a579de77b1c438d9b8ad4bb6c72f1ad8be69b31513a7d30c00e7cd98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794513636-g1096bf/amp-linux-arm64"
      sha256 "c1fa8235e089905a1d44099df86d3b08100564088f2b353a710bf1d91f554348"
    else
      url "https://static.ampcode.com/cli/0.0.1794513636-g1096bf/amp-linux-x64"
      sha256 "f556da86b84911cc7e5da7742ce88b414c08288de16c9b263da414853cb716c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
