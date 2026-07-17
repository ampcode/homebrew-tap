class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784305484-g8dbc9a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784305484-g8dbc9a/amp-darwin-arm64"
      sha256 "37d501552fda0da563250596a4babe86b06ecaf5e57e1563d2a93f934fc31171"
    else
      url "https://static.ampcode.com/cli/0.0.1784305484-g8dbc9a/amp-darwin-x64"
      sha256 "ac55ca4af49ffc6a15a6bbf5a978d7a8108f0e248b440694699a92c8e7ac127f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784305484-g8dbc9a/amp-linux-arm64"
      sha256 "a6e4747296f6250f43c3202f62b48b8f4a933242c656676d8e1d647b3a35141b"
    else
      url "https://static.ampcode.com/cli/0.0.1784305484-g8dbc9a/amp-linux-x64"
      sha256 "bd751ce55ce0577a815a48e18acb2b2742b07f46e95b092b7ba0590d542cd70c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
