class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777717702-g2fe2bd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777717702-g2fe2bd/amp-darwin-arm64"
      sha256 "724529d013a2b4e0f8998697a7105aaa287d34446432f6129ec7d51839216c66"
    else
      url "https://static.ampcode.com/cli/0.0.1777717702-g2fe2bd/amp-darwin-x64"
      sha256 "1cb4bf0b974dbc8d94da93dee717abdee3b7bbc10bee408fe6079da95fd5a008"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777717702-g2fe2bd/amp-linux-arm64"
      sha256 "054522fa8624cbadb2e36ef9b96373eec759af1a1b42da2e88aee2160afb0940"
    else
      url "https://static.ampcode.com/cli/0.0.1777717702-g2fe2bd/amp-linux-x64"
      sha256 "f219d9e461e149aa1ae5afdd082c9161c631ee64f9751e1838dabe9bcced4261"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
