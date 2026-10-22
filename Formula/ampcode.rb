class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792641650-gd4ebfb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792641650-gd4ebfb/amp-darwin-arm64"
      sha256 "e495b6d084df39e55acea8969735159043db927951ad87b9e2fb4af4b81323e9"
    else
      url "https://static.ampcode.com/cli/0.0.1792641650-gd4ebfb/amp-darwin-x64"
      sha256 "f13c5fcc0fa4282def4ba32882b47968b67fbf1e3338eabf46792e970693bf83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792641650-gd4ebfb/amp-linux-arm64"
      sha256 "0310ffdbb8e958b7a387d7465f1530010a24aa2e46251d49aaa23f956458d5ac"
    else
      url "https://static.ampcode.com/cli/0.0.1792641650-gd4ebfb/amp-linux-x64"
      sha256 "785f67fef5a17243a7c3480da30a528d1d80057f4a8c04e4d16ba6a6a6e0cc8e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
