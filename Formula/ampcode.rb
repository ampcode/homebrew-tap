class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784477831-g57f050"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784477831-g57f050/amp-darwin-arm64"
      sha256 "0e694c0136fd38b1bf32d62a7437a073e0acb38460ba72908aacba707c805e92"
    else
      url "https://static.ampcode.com/cli/0.0.1784477831-g57f050/amp-darwin-x64"
      sha256 "1105c5fcdb3308e502a0d3dde7902f68b6656241468ea05e92050ea0889e0df3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784477831-g57f050/amp-linux-arm64"
      sha256 "5444f1413d25ef1cf182fb4fc45dbb03dbc1aa313f71b7e067f6cf5494a08316"
    else
      url "https://static.ampcode.com/cli/0.0.1784477831-g57f050/amp-linux-x64"
      sha256 "46eda5fd41e337753178f04bdb7d710bbde91d119e89ce3cfdbf2c5f8e75eebc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
