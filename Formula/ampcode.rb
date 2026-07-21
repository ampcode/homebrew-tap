class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784627333-g3eadaf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784627333-g3eadaf/amp-darwin-arm64"
      sha256 "cd05352462ea73874c4a535e3931cc176d74d633a2caf795441c2c13d8ca9168"
    else
      url "https://static.ampcode.com/cli/0.0.1784627333-g3eadaf/amp-darwin-x64"
      sha256 "17247dbe70cd5635736dd1fb62a3862b2869e43a3253579cde010cf7afb27f13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784627333-g3eadaf/amp-linux-arm64"
      sha256 "ff45ef5011274a2e8355f2054b0ca5431f35ae49086f7dea8b8fc45f17e4656c"
    else
      url "https://static.ampcode.com/cli/0.0.1784627333-g3eadaf/amp-linux-x64"
      sha256 "96ca80e0547d62a50a4eadf4766552400e3c9b187b771d2c3e147e848b8491c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
