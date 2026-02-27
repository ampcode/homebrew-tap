class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772193869-g6e34ce"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772193869-g6e34ce/amp-darwin-arm64"
      sha256 "649ac4deec92a77c3788fbc79adf3c354a46d04af475dcb33b7ecf99d09c5ffe"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772193869-g6e34ce/amp-darwin-x64"
      sha256 "0c0ded819f0f6cd8bf4a62e60ce7bfe3b989ac3b7136f019e2f7043db282ff99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772193869-g6e34ce/amp-linux-arm64"
      sha256 "f01a037c3f9fdadf073b6410714c5855e148ccbfaded3884d7e8ca4d0007e5c9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772193869-g6e34ce/amp-linux-x64"
      sha256 "cdd9afc53cbe4af11091c0d12c3939e6aa4ab81541d9e2acbfd5566d9bd4a1f2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
