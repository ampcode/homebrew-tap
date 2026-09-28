class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790613389-g144226"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790613389-g144226/amp-darwin-arm64"
      sha256 "6363099e5c8381e5f2f97c05c48106374d0740e6b6aa8b522a453d8d10fa1545"
    else
      url "https://static.ampcode.com/cli/0.0.1790613389-g144226/amp-darwin-x64"
      sha256 "d5fb542a0a5a86dd9a89d1b482b436299b5bac62e90e8728ffffc39bb88b4367"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790613389-g144226/amp-linux-arm64"
      sha256 "50c98f6f6ed89bb215cd321d1901e59f508972fded70916f76601bd29f3c8b48"
    else
      url "https://static.ampcode.com/cli/0.0.1790613389-g144226/amp-linux-x64"
      sha256 "cfc77f6ab5b36567065ccceebe44cc5c10ac4cbe07ebee1ca42002dd3147f361"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
