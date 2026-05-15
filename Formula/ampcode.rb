class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778837190-g36e243"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778837190-g36e243/amp-darwin-arm64"
      sha256 "e73e750d237679dede7dfeb12360a0eb4b484e3cc59104e62a74442429a90660"
    else
      url "https://static.ampcode.com/cli/0.0.1778837190-g36e243/amp-darwin-x64"
      sha256 "c2c9c39f9edcd746d85c0cceedf878b064a77951dd95528cc076d176cfaae42b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778837190-g36e243/amp-linux-arm64"
      sha256 "67455fba035d16166d7e42cea5d504774a04ec5f0f2bfd2ee91ac6275056cfac"
    else
      url "https://static.ampcode.com/cli/0.0.1778837190-g36e243/amp-linux-x64"
      sha256 "1240eb086eeb6c08e27afb3d2b36bbed5ff75fbee1b6d69efd305bf14a11ae98"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
