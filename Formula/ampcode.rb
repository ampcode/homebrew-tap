class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777594497-gcbffc5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777594497-gcbffc5/amp-darwin-arm64"
      sha256 "bcaa1d6554cdb6d48d507b04fa90daf014150fa726fd8a6a1842ecf41aa430e8"
    else
      url "https://static.ampcode.com/cli/0.0.1777594497-gcbffc5/amp-darwin-x64"
      sha256 "4174c20c911b1c6569a8505c92051c0dc19fa87a40670377743a10ee9affd04d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777594497-gcbffc5/amp-linux-arm64"
      sha256 "3db1eb874c9c6c19dd1d4dc7509f005da05fcf46837ab6d06428a7f48d9c6ab8"
    else
      url "https://static.ampcode.com/cli/0.0.1777594497-gcbffc5/amp-linux-x64"
      sha256 "fa927deeb70d5f8ea4c15256a424576557e573a4576a49a6264fba6eca360781"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
