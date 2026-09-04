class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788552040-gd80c15"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788552040-gd80c15/amp-darwin-arm64"
      sha256 "108f3a494037c44cb2383b96f7ad8988b3f4ff9eb93062a6b5b183044646dd11"
    else
      url "https://static.ampcode.com/cli/0.0.1788552040-gd80c15/amp-darwin-x64"
      sha256 "eef3801eac148db238ab2fb87a7a8fa0a4f7aedf90e5d0ad2b5d69095e687560"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788552040-gd80c15/amp-linux-arm64"
      sha256 "1c169524bc148f56ab6b6e11ff5dcfc111c654edf7729602db469fa27d5d97cb"
    else
      url "https://static.ampcode.com/cli/0.0.1788552040-gd80c15/amp-linux-x64"
      sha256 "1e2da5b0f038ff8aba21abb3295efcd3811a22af9af978e84f91acd426cc0db2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
