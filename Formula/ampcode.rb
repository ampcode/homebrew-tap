class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779872458-g7b0532"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779872458-g7b0532/amp-darwin-arm64"
      sha256 "69e9dbe57c77978609cde6a057c48db4779d376939bab3c41b2c45709ea1a0d6"
    else
      url "https://static.ampcode.com/cli/0.0.1779872458-g7b0532/amp-darwin-x64"
      sha256 "ed1570d8f34667c756fce3bf7627a3be0b03590871bf17f8d20c51767bea66c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779872458-g7b0532/amp-linux-arm64"
      sha256 "a00ed5c6476d5911dc1e7826d2887590acd6e241443e18189ae951194c0ebc4f"
    else
      url "https://static.ampcode.com/cli/0.0.1779872458-g7b0532/amp-linux-x64"
      sha256 "624c15bdd6dcc0402033ca905d1c90750d1b673963c5aae8f3d0af45b0cdaf3f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
