class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787631059-gc74b7a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787631059-gc74b7a/amp-darwin-arm64"
      sha256 "7a4768992239cdbec5a912a86cf4804a403bc4f64d4c9acb124a168a9c4d2e9a"
    else
      url "https://static.ampcode.com/cli/0.0.1787631059-gc74b7a/amp-darwin-x64"
      sha256 "e58bf78dd2296e13a31285452067123e0897a33ae22a5e2a096d0665ab0e46f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787631059-gc74b7a/amp-linux-arm64"
      sha256 "a177c8de683a8f1b4365b16d3645bf3af3d2552ac8cb703cc70b1ee079f5999d"
    else
      url "https://static.ampcode.com/cli/0.0.1787631059-gc74b7a/amp-linux-x64"
      sha256 "9c9d7860aacbf8357b52639b12fbed39e538a5e5bda4a4bb4e197db09df61fdc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
