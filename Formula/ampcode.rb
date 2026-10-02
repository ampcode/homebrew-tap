class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790913650-g48ed1c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790913650-g48ed1c/amp-darwin-arm64"
      sha256 "e083d7983159e898b0c76429af2a8a179297c4945d2b456341cfbe37aba11f13"
    else
      url "https://static.ampcode.com/cli/0.0.1790913650-g48ed1c/amp-darwin-x64"
      sha256 "435640a64f4e7cc00c0570e983a885e7a6d8e6201c380c0b87ffb43e95357741"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790913650-g48ed1c/amp-linux-arm64"
      sha256 "dfd84b9129cf626798d71b21d7725eff1bd98189269091c150984b162407767f"
    else
      url "https://static.ampcode.com/cli/0.0.1790913650-g48ed1c/amp-linux-x64"
      sha256 "899a95f8dd8f5b30310430616e4dcd3ae9513c0f6a58ddb058c415f4f3840f1e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
