class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779181266-g25c2b3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779181266-g25c2b3/amp-darwin-arm64"
      sha256 "84165d203e6c2f9f8d419e08711beb99b34207436677a233ef81b406fcf9c81c"
    else
      url "https://static.ampcode.com/cli/0.0.1779181266-g25c2b3/amp-darwin-x64"
      sha256 "fca2bab9bc5f0ed6f13b132eb8d01f4eb294dc45eac59209a053a19f63a4f633"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779181266-g25c2b3/amp-linux-arm64"
      sha256 "3ce666e30f8e3116bdb947c2aa100f4b55b0958da6424b3234a99c2f617e5093"
    else
      url "https://static.ampcode.com/cli/0.0.1779181266-g25c2b3/amp-linux-x64"
      sha256 "0b988b6c5b63ddb007b56eb73102470c47add9e694754b74c8989b558d2500eb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
