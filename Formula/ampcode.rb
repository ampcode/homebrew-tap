class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773927386-g555b4a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773927386-g555b4a/amp-darwin-arm64"
      sha256 "05b8ae5d08a1f8a13bb4031432c5455650bca11abaae2f5a41b0a491c33792de"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773927386-g555b4a/amp-darwin-x64"
      sha256 "bc75c15dad1717a03ea7595cec9d192ac9f92236639a9102b29ac44f21a648cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773927386-g555b4a/amp-linux-arm64"
      sha256 "1fb8d124c6da5d62342bdac65f67f3a551b12849b37e8fc7d02262e00884be47"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773927386-g555b4a/amp-linux-x64"
      sha256 "9090c4c04e63877345cc1662dc2ce3ad96609d407276721668beb2957c3b3f31"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
