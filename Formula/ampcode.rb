class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773691624-gc84dbf"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773691624-gc84dbf/amp-darwin-arm64"
      sha256 "f9db6e5d464456f0ae2fc4cc9436973594f48b3b1f0085b66089c78ca18bf180"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773691624-gc84dbf/amp-darwin-x64"
      sha256 "ec993c9ef630e4f187de73d0ff987daf0b72408277a47b8b621de2c9ab3a5f7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773691624-gc84dbf/amp-linux-arm64"
      sha256 "8cfdff89be27b90cdf7de1d859b1c9a9ea12d55aba44f69184c340d09073dd75"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773691624-gc84dbf/amp-linux-x64"
      sha256 "34a6e12e97b86d28bd33b1facaab4b8e3d2531e7da2f19d37622ad65ab818fb0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
