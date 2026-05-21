class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779387832-g8c3247"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779387832-g8c3247/amp-darwin-arm64"
      sha256 "92ce6a748aa121ec29f8ad15330dd8fad7535364ef78bd340305975ecda762b5"
    else
      url "https://static.ampcode.com/cli/0.0.1779387832-g8c3247/amp-darwin-x64"
      sha256 "303f6941ddd87458f72bb30848ad9f651d63f0b041ab018754c409221b1a9773"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779387832-g8c3247/amp-linux-arm64"
      sha256 "c913b03ef6b40f9b05043c4e9840b36ad1b2f7d4f181fe29999851549422e827"
    else
      url "https://static.ampcode.com/cli/0.0.1779387832-g8c3247/amp-linux-x64"
      sha256 "ce94f3c7bcf4a14a3aee94f67a7a041647c6f628bf28f2051978522fce295066"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
