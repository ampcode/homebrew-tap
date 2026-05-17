class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779007153-g35ddd7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779007153-g35ddd7/amp-darwin-arm64"
      sha256 "321788cf90ae867f0c9b4b3569cafa1cb211190d21340b996de55f1c2caf1e00"
    else
      url "https://static.ampcode.com/cli/0.0.1779007153-g35ddd7/amp-darwin-x64"
      sha256 "ebf9163492d113ac15e4e1be797656f5f8b0931a1288977dc6c93495f4fc80a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779007153-g35ddd7/amp-linux-arm64"
      sha256 "c6cdbac9a2bd9c51b0d89b11e7369f7c63771ad9fe21d9a156fd0671ed96df99"
    else
      url "https://static.ampcode.com/cli/0.0.1779007153-g35ddd7/amp-linux-x64"
      sha256 "2cbf5fa02cc04947e35f68a1605c53060f1b7ab8a3890fd68753ba6a3c50524b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
