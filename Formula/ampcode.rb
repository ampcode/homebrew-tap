class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785474426-g861a70"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785474426-g861a70/amp-darwin-arm64"
      sha256 "ac2f755f37209d55ff8a5d97aaa02a4e02f38226e0bc595485d7fac4f23f642b"
    else
      url "https://static.ampcode.com/cli/0.0.1785474426-g861a70/amp-darwin-x64"
      sha256 "20c5c15f12409fecc80c839df00b9e57ff4c33418af879a4f9076ce178b8ad67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785474426-g861a70/amp-linux-arm64"
      sha256 "c79c1e029d421a1a5744f4835db5bac8ccb247fb5ece9973055b592b5f6e7b1b"
    else
      url "https://static.ampcode.com/cli/0.0.1785474426-g861a70/amp-linux-x64"
      sha256 "5bda88a163edc5ef34c6a4cf0d489e8f7a5023b8c3d1088ea7a8130cacd3f9a7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
