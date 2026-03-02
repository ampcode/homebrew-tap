class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772453701-gb6edf3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772453701-gb6edf3/amp-darwin-arm64"
      sha256 "626a51988a86a8364e247bc736de2375d7cfed59763359c2c6afe6a7c3e152f3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772453701-gb6edf3/amp-darwin-x64"
      sha256 "4ca382551a7fa29c497009f0a512e2e0c656e171556cdf63202b89d78bfeb9a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772453701-gb6edf3/amp-linux-arm64"
      sha256 "8158b134e6ac6b9d76e5e7e1726e68262bae6926dfbf6c7a53d49fe2ca0d2e20"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772453701-gb6edf3/amp-linux-x64"
      sha256 "8b3929dfdd89cbba2c338116e6463fe507d55f4e86f98e8dea6846d27139721f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
