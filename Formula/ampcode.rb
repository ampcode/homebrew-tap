class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788279758-ge2ac2e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788279758-ge2ac2e/amp-darwin-arm64"
      sha256 "c1692819db4b9e68970326691aa3dbd88a940b910266e82a62f1189965e0f0a4"
    else
      url "https://static.ampcode.com/cli/0.0.1788279758-ge2ac2e/amp-darwin-x64"
      sha256 "d4b66b1a8bb8497f3bab7a36d716b6c835a77617d57ce77e2c6933276b2cae6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788279758-ge2ac2e/amp-linux-arm64"
      sha256 "c0d23f36a124c016fa589e8e9b53fd70b9ced5e67b44bf83ac063422b22c3846"
    else
      url "https://static.ampcode.com/cli/0.0.1788279758-ge2ac2e/amp-linux-x64"
      sha256 "206be6cc47461f344454a5620a86e86221011590316218bdbd6b70148bf0b291"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
