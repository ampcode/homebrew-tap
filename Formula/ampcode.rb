class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790343291-gc46a3e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790343291-gc46a3e/amp-darwin-arm64"
      sha256 "cb5f0603528d18eea383b1aadafdb0a46078143a6c6afd5cc43912fcc4e696f4"
    else
      url "https://static.ampcode.com/cli/0.0.1790343291-gc46a3e/amp-darwin-x64"
      sha256 "9f8cc158525f5be21cdff8b2727818463880ed03a6313a28425ef56120c265c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790343291-gc46a3e/amp-linux-arm64"
      sha256 "89695e35bb95fabe399f955e8e9b3c1bed02ab9acfe509f4b461e968d3b24303"
    else
      url "https://static.ampcode.com/cli/0.0.1790343291-gc46a3e/amp-linux-x64"
      sha256 "56828be9ca5e10d7835513af3da9ae1f983553a1b7fb648da26acfe4e4c42343"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
