class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769875297-g998a55"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769875297-g998a55/amp-darwin-arm64"
      sha256 "34c3b5d2a70dae08d60856519fd71201aa1b409e5116c26674c9a675dfed2b20"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769875297-g998a55/amp-darwin-x64"
      sha256 "c1e663a5a2178c97f6d81c3d93dad80ca95c54154b8c8f2909f5ac5cc4a1bafb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769875297-g998a55/amp-linux-arm64"
      sha256 "71df8c867deff29734f6ab6d7f764c54d0ce284bb16d0ab92a256584f586288f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769875297-g998a55/amp-linux-x64"
      sha256 "28d47d901fa04333f30bd72bfad5dbefbc416762827be16fbbf2c68c0a6e9b5e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
