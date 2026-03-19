class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773894994-gdee123"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773894994-gdee123/amp-darwin-arm64"
      sha256 "96623f57bb92ae4080344121541cd36d437b84edc382724bd18f9f06fd6f26e4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773894994-gdee123/amp-darwin-x64"
      sha256 "5aa30b22041258d49330a075dead83cd86df8a243b035886a1e69d8554e27e21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773894994-gdee123/amp-linux-arm64"
      sha256 "251b39c9ab175b4d0bdea5a3a0bba1e946b98ca5a33d95e94a25d514359f883b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773894994-gdee123/amp-linux-x64"
      sha256 "a661cfc6d281395e38bd14e90d496f22a1f1d03830a1a4aecebda7f175fbb1d6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
