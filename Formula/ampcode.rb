class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793199090-gd59795"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793199090-gd59795/amp-darwin-arm64"
      sha256 "7a753c1ccd215fa6042aa49fa920899f3639e0867a11e1a3e9504dcbc0c1120e"
    else
      url "https://static.ampcode.com/cli/0.0.1793199090-gd59795/amp-darwin-x64"
      sha256 "f6b2197ea89a971be9602b692090640efbd8c4c8361002b81bd2cb0ef9a357b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793199090-gd59795/amp-linux-arm64"
      sha256 "79f37818f01b8fb9f47913c32f8377a3fad2ce697bef39893fe2cb4e4054197e"
    else
      url "https://static.ampcode.com/cli/0.0.1793199090-gd59795/amp-linux-x64"
      sha256 "d988e1ac351f027c9788fc25f30cb2b6f9c2933e8f89d7c3c65c368d169cbce5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
