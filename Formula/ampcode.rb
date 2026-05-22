class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779468092-g245b99"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779468092-g245b99/amp-darwin-arm64"
      sha256 "144988ac95391527d23d96574dd91f0e21b3692b5f53a6473b2af9d0f88b1d59"
    else
      url "https://static.ampcode.com/cli/0.0.1779468092-g245b99/amp-darwin-x64"
      sha256 "123608287e4383fedacd50f8492014083a977c8328427046f39b369f4a6a13a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779468092-g245b99/amp-linux-arm64"
      sha256 "fb695a28951dd2012635ce42e32204b4a8a0a5a81dd99a263f7f600ca18841dd"
    else
      url "https://static.ampcode.com/cli/0.0.1779468092-g245b99/amp-linux-x64"
      sha256 "5fbe40e87f903d82feb6a03df78596ac30f1c73ac27185f6c8b4c78cf49d6931"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
