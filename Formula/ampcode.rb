class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769558511-gd09636"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769558511-gd09636/amp-darwin-arm64"
      sha256 "74eedf9438e3d739f815b70627b5cacf0649e4de76881bd81d57e7f809061137"
    else
      url "/0.0.1769558511-gd09636/amp-darwin-x64"
      sha256 "3ae1e447711cc86a18c5fd3c6e41c218982135508b785f5a7b48262b0d939390"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769558511-gd09636/amp-linux-arm64"
      sha256 "d04fd53f6e81c49422909fe870caafcc80106ab761532cbcce8f346144395858"
    else
      url "/0.0.1769558511-gd09636/amp-linux-x64"
      sha256 "7050a55a097030d4b94a39497bf3919d712eef130edb58c4cd3f46c68a40bc37"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
