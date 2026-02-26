class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772107648-gbe4328"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772107648-gbe4328/amp-darwin-arm64"
      sha256 "93ea58545f06fd6b52442e3cea0af213285d8e09f7ceed3a274d525529d9a93c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772107648-gbe4328/amp-darwin-x64"
      sha256 "265bc62675f35aa9c052bae150dcfbd1ebb5ba6bf69eb0cd95c46d036ca89de4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772107648-gbe4328/amp-linux-arm64"
      sha256 "4664b6d82a985bcb39ba072822e26ed8005e8a5b4998240c92ff1b82e8a3fdf2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772107648-gbe4328/amp-linux-x64"
      sha256 "1221f6fbc6fcc54791830f56f88c5bd003329f48e6df6dd38c525a4aefa563d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
