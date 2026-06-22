class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782145303-gaa0ecf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782145303-gaa0ecf/amp-darwin-arm64"
      sha256 "bc9a9e082d8759f61fb108cfd8c8ae47d491817a9c66d2dc53373eadec89ac37"
    else
      url "https://static.ampcode.com/cli/0.0.1782145303-gaa0ecf/amp-darwin-x64"
      sha256 "107549fdca2fcdd6751b3322807f0981e6647d8e5bc29548a07c721677a6a095"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782145303-gaa0ecf/amp-linux-arm64"
      sha256 "4af18e1b7c13620bcdbf9beda7208e131d58b513fe9e545e5a966657b7b198ea"
    else
      url "https://static.ampcode.com/cli/0.0.1782145303-gaa0ecf/amp-linux-x64"
      sha256 "b549545f95de730b93fdb507edb058477e731098af1feb8b5f384531b7fe590c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
