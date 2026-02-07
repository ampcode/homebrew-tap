class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770465705-gfc774c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770465705-gfc774c/amp-darwin-arm64"
      sha256 "9f86a31fe2455b96037bb78961e058492faa5d57bbbde81b7fb5a0d654a889a8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770465705-gfc774c/amp-darwin-x64"
      sha256 "87cd25bb7669a856706d7b5a058d1fe0be38d1b4db54034d84ad8ab921bbec15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770465705-gfc774c/amp-linux-arm64"
      sha256 "97af3ae0e11ce46d813ac8667d5454e6fc78209635d10ef8cd6f5936d6080eb2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770465705-gfc774c/amp-linux-x64"
      sha256 "e8fd1220cde337e13a3e0e09360846466900fe614ebd6f30a7275593830beabb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
