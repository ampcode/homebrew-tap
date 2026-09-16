class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789588847-gf375db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789588847-gf375db/amp-darwin-arm64"
      sha256 "a353e0b32e31279baf1535825b987d98f5c411dc87b3f4b012417c78e370581a"
    else
      url "https://static.ampcode.com/cli/0.0.1789588847-gf375db/amp-darwin-x64"
      sha256 "ce69ba9e237abf6fcc1373680294b2de7a1ab777a2027a015aa32e21a50fda36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789588847-gf375db/amp-linux-arm64"
      sha256 "7ba35190c2151e566c70798d6e6c9ab818ccff12f869a04f02c037a985137266"
    else
      url "https://static.ampcode.com/cli/0.0.1789588847-gf375db/amp-linux-x64"
      sha256 "3e2c9d6966b0e7795733f1a9406cf485b6542cef61e62ad8631ab7c8c7c072ba"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
