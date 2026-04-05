class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775390627-g406649"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775390627-g406649/amp-darwin-arm64"
      sha256 "da5df878bbc3956dd83d7aa4092249b7509ed09db33a91e2fd7c8f0047f474e2"
    else
      url "https://static.ampcode.com/cli/0.0.1775390627-g406649/amp-darwin-x64"
      sha256 "16a983b84c4f4c3bf0cee6f4bcb42f5849e8a05b3aaa9f7e554d4099fed26b3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775390627-g406649/amp-linux-arm64"
      sha256 "7ba8b73baf93f4423a4e03e90f25426e8303d2a3fce68c56ee452f3c22cb9e16"
    else
      url "https://static.ampcode.com/cli/0.0.1775390627-g406649/amp-linux-x64"
      sha256 "f234fabf6a11830f1108baa1976374d515fa093fa10b9a51f1e5c2110be3b655"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
