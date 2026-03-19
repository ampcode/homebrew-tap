class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773950853-g6caa21"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773950853-g6caa21/amp-darwin-arm64"
      sha256 "3f5b20da395a16802b202b316adfd8b5286362e0ba535d9a45a16f7301d88936"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773950853-g6caa21/amp-darwin-x64"
      sha256 "741bbba54ed87ec9cad440bed19b65c2e328916aa97beabb1c6e3496b968c916"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773950853-g6caa21/amp-linux-arm64"
      sha256 "18aff3caf0ab56cc2ddad157b90665128781d84b35c8659724b2cff84f6f510d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773950853-g6caa21/amp-linux-x64"
      sha256 "87299546105546c8e983c8b1411f21f87ec8844d9fc8aec853f9473dd4c78397"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
