class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786637674-gb9011e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786637674-gb9011e/amp-darwin-arm64"
      sha256 "4f77ed888b17893220132690aeea66d65f1f77e63b2202aca4a0e63734b8ae8d"
    else
      url "https://static.ampcode.com/cli/0.0.1786637674-gb9011e/amp-darwin-x64"
      sha256 "1ad8d4e71ea06349c5376c30a6e75e875686f9c62a55782a7e5c4ca63ff7a474"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786637674-gb9011e/amp-linux-arm64"
      sha256 "08db992304542d7a4cfc341ffb11cb665b96fc6e287b8d7709c9b254aeea8464"
    else
      url "https://static.ampcode.com/cli/0.0.1786637674-gb9011e/amp-linux-x64"
      sha256 "39f880fa6c9bfc5f1ef88ce512a8283fb44383bfc80d7266012a525e8564365c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
