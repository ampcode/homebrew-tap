class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772323326-g24a24e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772323326-g24a24e/amp-darwin-arm64"
      sha256 "a0cfd9ba6311d3ace3d013fdff443db43b498447f9b9fd581d3953ea780fa813"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772323326-g24a24e/amp-darwin-x64"
      sha256 "0f388dfc2e739068dca1806a8fa29ef4591b8fba02afb8da97380e8e8dcef8db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772323326-g24a24e/amp-linux-arm64"
      sha256 "33b1ed67c6ef3cacbda75e66ce4e2dbe24ddf16b54b2f5f7d3b81ce677b18d87"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772323326-g24a24e/amp-linux-x64"
      sha256 "73944fc209d095bfe01fd2d43d6c4c68a60bce85eb7f3246638a01a56d5b1b4a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
