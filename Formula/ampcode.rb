class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783615744-g9cd8f4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783615744-g9cd8f4/amp-darwin-arm64"
      sha256 "31b5971094036242b6b15c320147fea03cae10dd1f7dc340f52c9b4493236d53"
    else
      url "https://static.ampcode.com/cli/0.0.1783615744-g9cd8f4/amp-darwin-x64"
      sha256 "bb57bfd5bf053196d4a8a434a70cb6605978f623fa12c02d6795a985c482d0ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783615744-g9cd8f4/amp-linux-arm64"
      sha256 "a75031840f5af468e1dd056118ebfec008e0ea42998b7aa963ca3113f85b23f2"
    else
      url "https://static.ampcode.com/cli/0.0.1783615744-g9cd8f4/amp-linux-x64"
      sha256 "b0eb54d9e1d18ffa05e22f8ef2ee369f498763f4f7d8d5c9db9dc69920ac79b9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
