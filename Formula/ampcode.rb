class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791950451-g165091"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791950451-g165091/amp-darwin-arm64"
      sha256 "bd6d31a6dba36d001bbea8ef081946b44c8f82575143a89a2e2bf5a82605cc9b"
    else
      url "https://static.ampcode.com/cli/0.0.1791950451-g165091/amp-darwin-x64"
      sha256 "7bec9dfe20fe8b787a06124913f1e367633e872c3b19c2c2e3797358f09af8df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791950451-g165091/amp-linux-arm64"
      sha256 "f5a864870ce048d74294e7e7472ef53025760aca565b851b9bd3cc8a4c14e1db"
    else
      url "https://static.ampcode.com/cli/0.0.1791950451-g165091/amp-linux-x64"
      sha256 "1f8b75bc9e4f071028846fc4e54a934a56297d524bab8cf8bd0a0d4ada956fc2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
