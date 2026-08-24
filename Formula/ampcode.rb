class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787573048-g90061d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787573048-g90061d/amp-darwin-arm64"
      sha256 "2060c07ce6f18eb4eaeecb314c6e0859564c5108c99243d633c8bfe59049e3d1"
    else
      url "https://static.ampcode.com/cli/0.0.1787573048-g90061d/amp-darwin-x64"
      sha256 "4576d7ea8fceb431f2c45c1f051959044757a02a9cc7b7fa3b8a12d2225efe10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787573048-g90061d/amp-linux-arm64"
      sha256 "f9191eb047c393c7a3091eb1adf6d5b8bc07975c21f511bfc07048561bc2c149"
    else
      url "https://static.ampcode.com/cli/0.0.1787573048-g90061d/amp-linux-x64"
      sha256 "f1fd8913e935a3e4f1c8c777284894f024ec9cf31342972b2fcfb30740a05541"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
