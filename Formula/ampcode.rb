class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774334965-g323ede"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774334965-g323ede/amp-darwin-arm64"
      sha256 "0d5e1714e05782da2998f23159bcbe47f7c765b9ff60020c9878b93181c90cdd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774334965-g323ede/amp-darwin-x64"
      sha256 "49265a8b1f01ffb6354eb0efeab043d127556246b580c126e8f38576b62256d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774334965-g323ede/amp-linux-arm64"
      sha256 "93d69fcb7877e3cf0501fa8ba28cb1a05e2dc6ad6cad1dec3a19ce6a80873d34"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774334965-g323ede/amp-linux-x64"
      sha256 "d6852f762c00f0ee7dc38b9bcae3df4fb015276ee41d28735a85e07016bb3578"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
