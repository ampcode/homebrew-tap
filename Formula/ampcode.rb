class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777366122-gc3259a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777366122-gc3259a/amp-darwin-arm64"
      sha256 "41e0b25191050251523f3fd81f082001ae4943aa9f4ff8fb22a9dbb657828601"
    else
      url "https://static.ampcode.com/cli/0.0.1777366122-gc3259a/amp-darwin-x64"
      sha256 "a19b46e8a85e2cd601fdde2c8dba0e15f32df7a11f85752d56718500d6dccc60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777366122-gc3259a/amp-linux-arm64"
      sha256 "cfc6c16378f44211cb66fcb829826b780ec7c48127cd8adb6269dbc9e8cbd62b"
    else
      url "https://static.ampcode.com/cli/0.0.1777366122-gc3259a/amp-linux-x64"
      sha256 "6266b58d1ecbc971b74f4aa22cc733bd30476f3c5be1efb1fcda3f47a8b15d66"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
