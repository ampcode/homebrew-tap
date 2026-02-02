class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770019661-g4d784f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770019661-g4d784f/amp-darwin-arm64"
      sha256 "950de253b88806ae8702a819bcd68ff3bc5e7c6066326258b7d59cf29e60effd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770019661-g4d784f/amp-darwin-x64"
      sha256 "849592d49b13f3707fe6f500fc7a531dbefca5339bdbeb46c1170f66269d3b59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770019661-g4d784f/amp-linux-arm64"
      sha256 "518ac1f621d744657d8fe2546e1bc507b3518246b0a76e5ccbee16227a440daf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770019661-g4d784f/amp-linux-x64"
      sha256 "c1bc61bf0bd30a91eca71896bddb53abd7e879ad6efd2aac27645a4123d0137d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
