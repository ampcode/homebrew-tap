class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789494372-g4786ce"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789494372-g4786ce/amp-darwin-arm64"
      sha256 "83505eb3413acd63e49814a78a7bf7091771ce613d4553d7632be1d7c88fad03"
    else
      url "https://static.ampcode.com/cli/0.0.1789494372-g4786ce/amp-darwin-x64"
      sha256 "fa9098bbe9823320394c0687a59b3b71a6308d536d990f8f4b5d58ce957f3102"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789494372-g4786ce/amp-linux-arm64"
      sha256 "78c1193056c55029795790f427c2fe1154e36be19e5625e53b53ac1f3e0442b7"
    else
      url "https://static.ampcode.com/cli/0.0.1789494372-g4786ce/amp-linux-x64"
      sha256 "74ea91cadb9e9a2d18c7dab0eb1a330e7e8e4a41c0b4a49fb85f5a546b7e185e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
