class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772685027-gdb1277"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772685027-gdb1277/amp-darwin-arm64"
      sha256 "a1a46e2db3be92d10c4c9e059cd0ecf65e69941a850dec3c1b8e12229ebf0973"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772685027-gdb1277/amp-darwin-x64"
      sha256 "9115c676136953e3ffbcf6f365b168b8405bf77823ffcb1e0990697032e1135b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772685027-gdb1277/amp-linux-arm64"
      sha256 "6060c44608a075de41978d7c7293995c5c873e3c74922e66d336413093f8b2a0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772685027-gdb1277/amp-linux-x64"
      sha256 "f5ad012df7b2511f20a0b7b80b858c5036f3dd3137cebdb7effaafc8e600ade6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
