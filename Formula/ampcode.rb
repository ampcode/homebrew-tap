class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774326829-g89d44d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774326829-g89d44d/amp-darwin-arm64"
      sha256 "61dc6c796f6750d6b91b4e9565b5b8c95458bf63779a5e9a68aec9705a0e1590"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774326829-g89d44d/amp-darwin-x64"
      sha256 "c4d9c8ea8d514ff6a23c0c1973435155a92c46ef157358170b58b0556c47903a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774326829-g89d44d/amp-linux-arm64"
      sha256 "dd1269665910055d846f2c25518d02adad3357b49152086750bf2f83888bd65d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774326829-g89d44d/amp-linux-x64"
      sha256 "048e8b33b97ab7f5f8942c6add867ba08b30dad62b15cd84e2a826dd9e302342"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
