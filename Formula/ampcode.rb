class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771617794-g7c5b43"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771617794-g7c5b43/amp-darwin-arm64"
      sha256 "2d615660f7db03b3744975ed6e1efbd2da7af017fc75bcd66e2d8a92ec337725"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771617794-g7c5b43/amp-darwin-x64"
      sha256 "dcefa14319a8d073e524d1a26bd2c18f02b04621c54b9e9983207a37d46d55cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771617794-g7c5b43/amp-linux-arm64"
      sha256 "142a911c88723845ab1864e78d2f4cc9e10584d0a77472eaac3377d06e5fbb38"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771617794-g7c5b43/amp-linux-x64"
      sha256 "91a0b795d51384350e054b9c7f3d8cb8346ba11f2e3c7d5732b51b4e3c25a215"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
