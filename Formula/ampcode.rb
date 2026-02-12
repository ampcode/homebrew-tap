class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770901224-g7f7648"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770901224-g7f7648/amp-darwin-arm64"
      sha256 "8c335c105c49b10761e20c2a046ceffb838b6de4b2111a7a205f4dbcd40890b8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770901224-g7f7648/amp-darwin-x64"
      sha256 "fcd3e808329686614ba1750cdcb324d0ea6d74d36e0032311f32e195a630cfaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770901224-g7f7648/amp-linux-arm64"
      sha256 "b512ad8c3c4fd03e99d92928158934a55643bbe05ab6dcd21d6fde56c289e88b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770901224-g7f7648/amp-linux-x64"
      sha256 "18fc8fb8f062354e7c380177e96f59c542ac0386529f9a8d413b866c86826f9a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
