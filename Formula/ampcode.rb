class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788257984-gd125fe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788257984-gd125fe/amp-darwin-arm64"
      sha256 "def61eb091f42a7afabe8886f45329928028a41991490388e6b9ac38a33e0af8"
    else
      url "https://static.ampcode.com/cli/0.0.1788257984-gd125fe/amp-darwin-x64"
      sha256 "b96484a3871242be91ab938ba43c9bf05a0f36adcc39fe813f8d703e0f27be5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788257984-gd125fe/amp-linux-arm64"
      sha256 "3c06ba69cff516d50e9fe558232c7083a9a01d7f6c65eed7145d5ff7ff7bbf9f"
    else
      url "https://static.ampcode.com/cli/0.0.1788257984-gd125fe/amp-linux-x64"
      sha256 "967e7283c0a68df75be03da440fd92921b6337f461464c8ce759b676fabc2726"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
