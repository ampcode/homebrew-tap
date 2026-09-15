class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789452786-gb5a285"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789452786-gb5a285/amp-darwin-arm64"
      sha256 "c5a990ae8d8216dc5b27a4f4eb70463740afa4c21a2b7d75fb63afa16164f809"
    else
      url "https://static.ampcode.com/cli/0.0.1789452786-gb5a285/amp-darwin-x64"
      sha256 "00b3cae894a70379e282944fe44c783a8fd94773dad9fe02fb12b20ec83178bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789452786-gb5a285/amp-linux-arm64"
      sha256 "e46799e1894acb7c5b9f843cd7d92401cdee4320088f6ac6e73c3e3d7855a5b9"
    else
      url "https://static.ampcode.com/cli/0.0.1789452786-gb5a285/amp-linux-x64"
      sha256 "0b989eede2e5e00a44da0b2ee1ac95ae1679df7bc3aaba3154073aad7e9c5523"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
