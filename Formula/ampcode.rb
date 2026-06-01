class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780334420-gd6ee43"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780334420-gd6ee43/amp-darwin-arm64"
      sha256 "c7c0c6d296b15f0469bff77fc55a9723508f037bc338f05e5c321e5b7a1bbcb5"
    else
      url "https://static.ampcode.com/cli/0.0.1780334420-gd6ee43/amp-darwin-x64"
      sha256 "f4dde0f8f050e4485de95fe30885bf77e069040a2284163cd57f1f010b2be97c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780334420-gd6ee43/amp-linux-arm64"
      sha256 "021f937e15dd6f8cd85ae56ce7e42e3fd88a3adf80e14fd1cb0b2bb82f26dd3f"
    else
      url "https://static.ampcode.com/cli/0.0.1780334420-gd6ee43/amp-linux-x64"
      sha256 "eb926e20af06a9e88c56603b4584c746beecea9cf31f42a584e4c86f27664858"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
