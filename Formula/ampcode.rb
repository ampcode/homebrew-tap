class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794038434-gd5a1bf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794038434-gd5a1bf/amp-darwin-arm64"
      sha256 "8e1118386a2c85c54ddd697b3a56ff7f2a4ee9f7e7b14c5097e1f1a2013601c2"
    else
      url "https://static.ampcode.com/cli/0.0.1794038434-gd5a1bf/amp-darwin-x64"
      sha256 "e08baff4a45cf9e08a79b798376cfdfcd509fa3c3144ac484725d120c9c0ad37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794038434-gd5a1bf/amp-linux-arm64"
      sha256 "941ca5215de18f29c36acc462dda3a786342d188978685f23df4a012fe5d3edd"
    else
      url "https://static.ampcode.com/cli/0.0.1794038434-gd5a1bf/amp-linux-x64"
      sha256 "7c17ee2394ee568eac37187aa19df2ef327e587f77eab65958fe1d60722634e7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
