class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778099318-g93346e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778099318-g93346e/amp-darwin-arm64"
      sha256 "43cf14e7a839c3e5c4c54e3eb58dfaab6671dbfbc518e44b0327ab20b5a6a983"
    else
      url "https://static.ampcode.com/cli/0.0.1778099318-g93346e/amp-darwin-x64"
      sha256 "3700764d4c777cdd104755fb6ffd6c973cb3db5182f780c56034482a3fe64ad9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778099318-g93346e/amp-linux-arm64"
      sha256 "f1793febd923101b4337aa26e9eb7aa32edc6db0cf362ea18c8c28de787887ab"
    else
      url "https://static.ampcode.com/cli/0.0.1778099318-g93346e/amp-linux-x64"
      sha256 "57faff5ebba120ece82db049dbba1326e02f55e4a10c4a6fc56dca0c83cd571e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
