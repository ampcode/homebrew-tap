class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787841388-gac9deb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787841388-gac9deb/amp-darwin-arm64"
      sha256 "d31eb3c19b2fdcc35b8cb1f0ef5038e27ebb7ff7706b8f7d62eeacae338743b6"
    else
      url "https://static.ampcode.com/cli/0.0.1787841388-gac9deb/amp-darwin-x64"
      sha256 "0f54f6be671bac54dabaf9959d34a3bfb464bbf1be2df9946365b57ba5bb547f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787841388-gac9deb/amp-linux-arm64"
      sha256 "2cf3aad3c5cc4dfa8af2a343888f79e9e752f57fc8d822871420476c95a0b114"
    else
      url "https://static.ampcode.com/cli/0.0.1787841388-gac9deb/amp-linux-x64"
      sha256 "a575f2c72b90c3b8fd35985c9aaf0f5f8da181474ab136e390f2091412e4e57e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
