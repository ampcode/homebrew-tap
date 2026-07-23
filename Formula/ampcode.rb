class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784838101-ga3144b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784838101-ga3144b/amp-darwin-arm64"
      sha256 "52f7d780023b368988f9cfa8a82c5388a29feba7173de9fb92083a1128fc4fc7"
    else
      url "https://static.ampcode.com/cli/0.0.1784838101-ga3144b/amp-darwin-x64"
      sha256 "2233aaf9ffa091aca51e803d85134717d1659ae522c25ff2da8748da9c3c6407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784838101-ga3144b/amp-linux-arm64"
      sha256 "fc9058087ce78eadae019a66c41197e29ea0298dde06e02e06748b71c4dbf092"
    else
      url "https://static.ampcode.com/cli/0.0.1784838101-ga3144b/amp-linux-x64"
      sha256 "2c821c39f8b12fc77bac419f606c4cfc7919d2b085b67fa701d4a435f63604ef"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
