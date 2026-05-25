class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779668338-g19be90"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779668338-g19be90/amp-darwin-arm64"
      sha256 "4e260c4698a9ef21c9d2ea2d2b4bb99bad5d591368e5d2e8b47e9f168e0c4f7b"
    else
      url "https://static.ampcode.com/cli/0.0.1779668338-g19be90/amp-darwin-x64"
      sha256 "eb6eb61f836d4cac952ed9656b437be43fd6df953c9605442a817fc63a76fa75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779668338-g19be90/amp-linux-arm64"
      sha256 "c1504a07e6ff8ac0ff99faa6a0b6e8ca6a57d88470e762902fc999103832d0e8"
    else
      url "https://static.ampcode.com/cli/0.0.1779668338-g19be90/amp-linux-x64"
      sha256 "8f882eb8ae11c01fa5e6ef555e363e21c664e80a3dbc2e27f8648e1156889ce5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
