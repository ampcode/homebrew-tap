class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769731386-gb24343"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769731386-gb24343/amp-darwin-arm64"
      sha256 "1256e1c34f0f11e3887be6c60a0702318ef5783318310608858c95f63fbe96a1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769731386-gb24343/amp-darwin-x64"
      sha256 "2b1ad2fb859f143fb1c1bcecd6f576a0075760088fb82e9d607ea109e79bf931"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769731386-gb24343/amp-linux-arm64"
      sha256 "c6c93d590e77ab2f0f1192bdbdc127d946c6f2f58c9618fbd1d4581309bd2c56"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769731386-gb24343/amp-linux-x64"
      sha256 "361c1d51a95022a1df7467f71975ee68cc7e189609db8bf7f914ac0e96f9f558"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
