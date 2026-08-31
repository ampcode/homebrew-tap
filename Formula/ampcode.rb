class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788148853-g38a2d7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788148853-g38a2d7/amp-darwin-arm64"
      sha256 "49f0f2eb5bb4673c6b0096ad956a89b84ed3a1cb44700e593de86c915425fc1f"
    else
      url "https://static.ampcode.com/cli/0.0.1788148853-g38a2d7/amp-darwin-x64"
      sha256 "e021ed288cb4441206b08206409c65efe96a084b33f1f3bdf38ffcdcc0b4e18f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788148853-g38a2d7/amp-linux-arm64"
      sha256 "a6cacefaa62b4e546047be6592078aedec7aa362593d41356cc014edbdd625d3"
    else
      url "https://static.ampcode.com/cli/0.0.1788148853-g38a2d7/amp-linux-x64"
      sha256 "77f7152bd700103f98a3f9138a667b3cb25d3065212781d1cd80d2d15cb95824"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
