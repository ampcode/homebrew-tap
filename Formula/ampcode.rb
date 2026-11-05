class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793894453-ge144da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793894453-ge144da/amp-darwin-arm64"
      sha256 "22f46aaf04f102a2c4467ac40ac8b38ad502c26b21c038e32090581e19d6966d"
    else
      url "https://static.ampcode.com/cli/0.0.1793894453-ge144da/amp-darwin-x64"
      sha256 "70ca218ae100138d18433fa0c01f0f735e1794fa8d37eb045a392670c20fdfc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793894453-ge144da/amp-linux-arm64"
      sha256 "1216d5ba7038a4dc2e49e37099bf64bfdba517c46f48ad4c1c044d897e7f28e4"
    else
      url "https://static.ampcode.com/cli/0.0.1793894453-ge144da/amp-linux-x64"
      sha256 "19ac1fe4c984b280b7ec5af476dc9d078fc383e83c7823106302540212a4cbd9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
