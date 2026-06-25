class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782410360-ga1266b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782410360-ga1266b/amp-darwin-arm64"
      sha256 "46fdc3f6d67e1cab32d0c217a10f66bbff0764736f0d45e742773c417fc515c6"
    else
      url "https://static.ampcode.com/cli/0.0.1782410360-ga1266b/amp-darwin-x64"
      sha256 "c594afb2e0439460be4c10bb5ef25af08c2091ec76a6aa681781af8acb036495"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782410360-ga1266b/amp-linux-arm64"
      sha256 "9f715c0e2ec10ded3d38731fc430622100bbd21e8140b59e916ab14a7a7515e8"
    else
      url "https://static.ampcode.com/cli/0.0.1782410360-ga1266b/amp-linux-x64"
      sha256 "686955e8a38abf4a7120ec09545e56ad8bb6fbe90870a1506acf4cb53bb06890"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
