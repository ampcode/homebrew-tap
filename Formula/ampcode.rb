class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775074185-gd026fe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775074185-gd026fe/amp-darwin-arm64"
      sha256 "4013ae3cc74ef9cfbb5a611dd54b4db4a2015fec145780a1f497132a61e3e6b3"
    else
      url "https://static.ampcode.com/cli/0.0.1775074185-gd026fe/amp-darwin-x64"
      sha256 "8e3dfc714325de3bb114f4d14d4c9825fccbc4c8260ceb0c8753bd5f9118a094"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775074185-gd026fe/amp-linux-arm64"
      sha256 "a36b4b17ff1eb65c18427d8e7bc54fba2e2c9c17b52e868774045259978bf0d3"
    else
      url "https://static.ampcode.com/cli/0.0.1775074185-gd026fe/amp-linux-x64"
      sha256 "6f0a7604135a36a228cc1e5354f829769476434f48c712627b99946205f946b7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
