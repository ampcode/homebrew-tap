class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773489712-g258ad5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773489712-g258ad5/amp-darwin-arm64"
      sha256 "e524bce766609de32c65c1712009afd26eaf662dff573f247d9332951f0feaa4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773489712-g258ad5/amp-darwin-x64"
      sha256 "4233a85a320880239b57464a6b118eff1c7504cf64ec1ecc16029d8357d68789"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773489712-g258ad5/amp-linux-arm64"
      sha256 "d903d89d0439469c831c003b1e6ed1e937c9d3a87968e6fdebb65f3b0b87f7fa"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773489712-g258ad5/amp-linux-x64"
      sha256 "5b3959b68a7f85e48a598ea8c5b5f211768af9212d627501d02ccc549c2d50a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
