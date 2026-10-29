class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793271832-g7615fe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793271832-g7615fe/amp-darwin-arm64"
      sha256 "7ca8ff1556b24eb26a78392a27386797a3233460e93a9fdcf44e348b8d51c5aa"
    else
      url "https://static.ampcode.com/cli/0.0.1793271832-g7615fe/amp-darwin-x64"
      sha256 "909dd4d8172d9f0f1287cec7757872eddd23efd66b71283dcf47d689553e90ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793271832-g7615fe/amp-linux-arm64"
      sha256 "7e6299b471a8de3cd8cacd77e6147d73b41a8febd850fc23ae0402980b2edf13"
    else
      url "https://static.ampcode.com/cli/0.0.1793271832-g7615fe/amp-linux-x64"
      sha256 "16094f4d7c439243477cff1aaf54f1060f24e08d36e5524c3b1b0f47c1202ac3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
