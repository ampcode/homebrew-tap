class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772004718-gdccfcb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772004718-gdccfcb/amp-darwin-arm64"
      sha256 "56b15ab336828320ed67a059002285e19d774b78d746a7004408593f0e6d2ef4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772004718-gdccfcb/amp-darwin-x64"
      sha256 "069a9aca9eabe03047f1c9da03149527d1f59c5d67fd1300d8fe70f0b16ec278"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772004718-gdccfcb/amp-linux-arm64"
      sha256 "9641c9f54ac9ec028e2c43f48269b84b7c8f4ac345e504917f66116641a21d49"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772004718-gdccfcb/amp-linux-x64"
      sha256 "dc68da66e7eacbf99188577e2d25a012b6ba7eb6b2760a50951080c4bfc222ff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
