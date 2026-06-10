class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781128120-g7d7ed5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781128120-g7d7ed5/amp-darwin-arm64"
      sha256 "3159b66641e195da79c0ef8d5e3a110d481494176b2e9fb28ee8019254c368b0"
    else
      url "https://static.ampcode.com/cli/0.0.1781128120-g7d7ed5/amp-darwin-x64"
      sha256 "5686469490ab5501d05e768a876c51b7a08936ee4ce386ec7bab437ef001161b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781128120-g7d7ed5/amp-linux-arm64"
      sha256 "de4070c0d54acd4938f79f9d244e6f3ccd72be3233936ceac25f525652eff33c"
    else
      url "https://static.ampcode.com/cli/0.0.1781128120-g7d7ed5/amp-linux-x64"
      sha256 "2a7875ff72508410c05e0967e9e2f2676d3fb8bd3a80d4235e0145f938eb1164"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
