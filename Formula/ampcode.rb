class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793469715-g7510af"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793469715-g7510af/amp-darwin-arm64"
      sha256 "19e35fb434da898fec4dab65e83f2f77aff4a1a65b039dd98a0a4291fe31dc5c"
    else
      url "https://static.ampcode.com/cli/0.0.1793469715-g7510af/amp-darwin-x64"
      sha256 "0b7c0af21faec52743cb82a0956122713f81306fa634c3cd5dce5c6ee40e4837"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793469715-g7510af/amp-linux-arm64"
      sha256 "bc75a97e5ee4265a054eda4625098c461b67a57ae43cb21703caeb2c8430fe17"
    else
      url "https://static.ampcode.com/cli/0.0.1793469715-g7510af/amp-linux-x64"
      sha256 "5dd165dcf154d21dbf36c577588d7276e14b3a6a83edacbb4b616f1c1c519145"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
