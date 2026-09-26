class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790416408-g1bcc92"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790416408-g1bcc92/amp-darwin-arm64"
      sha256 "cdd092e7e0e025e36a7225d43fea2e63857f9af507fe218488a2ceda8122cede"
    else
      url "https://static.ampcode.com/cli/0.0.1790416408-g1bcc92/amp-darwin-x64"
      sha256 "ea82ecbe8a043a6381efc267497e9dfca718428fa51b82fecd5c8bd2626d8bc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790416408-g1bcc92/amp-linux-arm64"
      sha256 "4dbf7039d0bdd4e46eaddfdb91b648ebc4428e0fc7d18d2f0ce9eeea70fd87d1"
    else
      url "https://static.ampcode.com/cli/0.0.1790416408-g1bcc92/amp-linux-x64"
      sha256 "b2b958c27fc2af6cf85dc732b42fe4277dcdde47c69d8616bb912e6e60227148"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
