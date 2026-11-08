class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794124830-gd53e62"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794124830-gd53e62/amp-darwin-arm64"
      sha256 "4895738272f4ce5d5a4b8a2f8a3dfc437ccc0cfe818befa618782c18fab6122a"
    else
      url "https://static.ampcode.com/cli/0.0.1794124830-gd53e62/amp-darwin-x64"
      sha256 "77d12865ce455b67b0743acaeee63b51b152f17293e41be076b1de1b328f3efe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794124830-gd53e62/amp-linux-arm64"
      sha256 "3096d484fc460c7855914f013f5f1dee2caba446797663a3a4b489cf6664a827"
    else
      url "https://static.ampcode.com/cli/0.0.1794124830-gd53e62/amp-linux-x64"
      sha256 "0008d4124cae4d2a4db3dd57cefb3888b1d720e6f8de4f72763ce2d3a2ffd8bb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
