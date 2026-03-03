class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772503238-g61db4a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772503238-g61db4a/amp-darwin-arm64"
      sha256 "87f1e62c9e12bb8fd4b0a0a703dff3fb6b34dc31def17599434e5ab21f926acd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772503238-g61db4a/amp-darwin-x64"
      sha256 "c74a8ba59756a24f76e44970f2641d0e60fe2b8077ee50728fc1a2de22f56d02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772503238-g61db4a/amp-linux-arm64"
      sha256 "8ef98e04ae9e21dc6d9081af27f47222c4a6aa65c365ac558bccbee3b830c52d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772503238-g61db4a/amp-linux-x64"
      sha256 "070b570bfa08d9d6e84685278c1f4ba545a248783733be69af034c685cba9025"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
