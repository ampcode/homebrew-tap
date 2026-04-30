class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777520902-ga418c5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777520902-ga418c5/amp-darwin-arm64"
      sha256 "7de48661113909830e679d8232449ad694d830ed646aa1b32d96d8231c358db1"
    else
      url "https://static.ampcode.com/cli/0.0.1777520902-ga418c5/amp-darwin-x64"
      sha256 "bdc9f31e5fd5913280b86bbcf470ef243a6094f5956406c56d668e84306da414"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777520902-ga418c5/amp-linux-arm64"
      sha256 "2da8113763d6438c3f7aba27a922b7942542499aca78f44d3a8791aefd2c1471"
    else
      url "https://static.ampcode.com/cli/0.0.1777520902-ga418c5/amp-linux-x64"
      sha256 "f84b2d0889090de75e42ec76bba0687e454a2f9486965e0bacb18c11d71ad7f7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
