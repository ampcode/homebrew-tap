class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781362617-g977781"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781362617-g977781/amp-darwin-arm64"
      sha256 "e2a9952fea80699cc4e9295a626ac211eb1c7036a5e2ec104ed0207b65f93bd1"
    else
      url "https://static.ampcode.com/cli/0.0.1781362617-g977781/amp-darwin-x64"
      sha256 "92dc7bcd1947ee37ebe401bae43271b538b03a8d2be6a26580e6370744e1acc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781362617-g977781/amp-linux-arm64"
      sha256 "04565998d98ed6336e24c2f40cb56435c72a293f40f40af85390ee2360dbe92d"
    else
      url "https://static.ampcode.com/cli/0.0.1781362617-g977781/amp-linux-x64"
      sha256 "f5a27f09a619fa141387e096ba6796e3c3d8392e8a07e8053f43a9482ace84bc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
