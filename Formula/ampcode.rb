class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786077520-gcc65e7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786077520-gcc65e7/amp-darwin-arm64"
      sha256 "18b5eaf5ef2f3c521b983a6de5535ecd6f73bca722874186ed6c74c48f6b376e"
    else
      url "https://static.ampcode.com/cli/0.0.1786077520-gcc65e7/amp-darwin-x64"
      sha256 "9efdf05ce6bb129e6d162663c0d287849827da10c38bd61c7a1c1fdd46d3fb9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786077520-gcc65e7/amp-linux-arm64"
      sha256 "a648ec0045f30c0dc33475ff2078d8b5f3a83c26b105c88c9379e6a9561bc172"
    else
      url "https://static.ampcode.com/cli/0.0.1786077520-gcc65e7/amp-linux-x64"
      sha256 "6b1e62ae07778ae772eefe0dbf7760091e070348c618bb575b029f5b9b541ae4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
