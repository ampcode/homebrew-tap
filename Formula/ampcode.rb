class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789617633-gd0d446"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789617633-gd0d446/amp-darwin-arm64"
      sha256 "481eac2f7524b61350fdd7eddb8de08d265d2f90c9fcbb6295e3bae6762eaaf2"
    else
      url "https://static.ampcode.com/cli/0.0.1789617633-gd0d446/amp-darwin-x64"
      sha256 "edd79bc9d55c88dda708680a4b9ba16109a33aa2f865b942783ca9d9fa741f0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789617633-gd0d446/amp-linux-arm64"
      sha256 "7947938cf5f22358904e29f0677485786e1642a2a8fcc9b5ab683b8a55396995"
    else
      url "https://static.ampcode.com/cli/0.0.1789617633-gd0d446/amp-linux-x64"
      sha256 "b956930e616c1b4fe6c7b1c72f2c53c5790f882d0523fac0e56919c851cf66a7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
