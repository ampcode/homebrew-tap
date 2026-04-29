class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777458223-g3391b2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777458223-g3391b2/amp-darwin-arm64"
      sha256 "91333a6a0cd4444a5a435d1592aed5ed3d48b44629331d3a334e77763d80dc41"
    else
      url "https://static.ampcode.com/cli/0.0.1777458223-g3391b2/amp-darwin-x64"
      sha256 "cf5ba717081fcaa0d7a369358ff3751192e970baf5cf77851ab582892f51b98c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777458223-g3391b2/amp-linux-arm64"
      sha256 "0996957277de231214ce671f45df14f3f5de505d1a6c705833d4598a5d4890c9"
    else
      url "https://static.ampcode.com/cli/0.0.1777458223-g3391b2/amp-linux-x64"
      sha256 "c15d7b5aee5b9da30d4114cdb905cc0724f1247072a7fee936f706148f81e6a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
