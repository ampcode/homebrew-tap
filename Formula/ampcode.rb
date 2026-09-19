class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789833626-g822386"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789833626-g822386/amp-darwin-arm64"
      sha256 "699f33e2af7bd6727e85d35689b4e6b777147cf89b9cb6e367a80f024fc70a81"
    else
      url "https://static.ampcode.com/cli/0.0.1789833626-g822386/amp-darwin-x64"
      sha256 "35a326e9f2cf3e9a97915a8d4818290ead71cde20038d9e8b54eeb6d3b6d8fd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789833626-g822386/amp-linux-arm64"
      sha256 "fe3d51bbcdd134bd397e3e3c1c1cfa1c2e3165cbefcc01b49e5c9041961526e2"
    else
      url "https://static.ampcode.com/cli/0.0.1789833626-g822386/amp-linux-x64"
      sha256 "52d74b2ac814033f30a38df7b0cc8d149e21e4934d6460fd87a2effc73fa9116"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
