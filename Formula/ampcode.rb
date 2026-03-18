class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773841360-gc1dc12"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773841360-gc1dc12/amp-darwin-arm64"
      sha256 "ee2f94f8ea8587c36f52b2297f279d550e076d63bb9ef609cebdd46d5ea8c997"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773841360-gc1dc12/amp-darwin-x64"
      sha256 "254ff4cd9c18c0d40846fa1f9c820ebf6e251aafa1b8badd328eae8c32445762"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773841360-gc1dc12/amp-linux-arm64"
      sha256 "b9b076782dd4426b5a210954a28b791e590fd390ddbbf26f9d0893993830b5b1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773841360-gc1dc12/amp-linux-x64"
      sha256 "299d5ce40dd4745291de0e508abc124e00d5b6423fdbda0d192e826e3570dfb1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
