class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775606940-gada1d5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775606940-gada1d5/amp-darwin-arm64"
      sha256 "b73b64aac3cb5d9bf5bdb50283d16584bdf98c5bc8f0d385cd3c2408d69feb5f"
    else
      url "https://static.ampcode.com/cli/0.0.1775606940-gada1d5/amp-darwin-x64"
      sha256 "e8c42b0eeb772daab05fe09f79ab470f37d837c0700ad8c3a5393dee1359e981"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775606940-gada1d5/amp-linux-arm64"
      sha256 "9464db809ea592f0b6e998f512491011456aba444153edb6ed7a3e6cbb6d2020"
    else
      url "https://static.ampcode.com/cli/0.0.1775606940-gada1d5/amp-linux-x64"
      sha256 "92880c12f7ef133baac94c87c169eac2ab6a1762aa7006336deebb0c28816325"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
