class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769760328-g77fecd"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769760328-g77fecd/amp-darwin-arm64"
      sha256 "d72c9c36008b563fb0a298f43194ef6282b8ff5647d48a86dee6e5fe00d35a2a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769760328-g77fecd/amp-darwin-x64"
      sha256 "4d84d003fb417e99f590869dc0a741d9132177cc88acc351c4f983ae6af52f15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769760328-g77fecd/amp-linux-arm64"
      sha256 "2304674329614d8161c6ba5538c3c752466a7b5c01c42d4c788ac51fe271bcb9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769760328-g77fecd/amp-linux-x64"
      sha256 "2b0503679ae5b623a1bf38b625b86308802b351f8e030ab4a9a6e2c1568ffa36"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
