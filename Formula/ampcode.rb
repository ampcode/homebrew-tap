class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790844275-g6aabf1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790844275-g6aabf1/amp-darwin-arm64"
      sha256 "e17368666dc5ad31e21142587848c441a929018518ed9f1a76358a256fccc361"
    else
      url "https://static.ampcode.com/cli/0.0.1790844275-g6aabf1/amp-darwin-x64"
      sha256 "9d6a0632957be5019677654868819a5226ead969f0a7e144b7ccdc9d73070c08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790844275-g6aabf1/amp-linux-arm64"
      sha256 "e364b81a863278efcea3ee04317e884c4273b0c24e73789bc683eaac7a35ce2a"
    else
      url "https://static.ampcode.com/cli/0.0.1790844275-g6aabf1/amp-linux-x64"
      sha256 "726b65130121d00747de9f57dd0648e8dc17f001f3d6589cb728984e7b1c6295"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
