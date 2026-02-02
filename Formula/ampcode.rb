class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770048344-g221270"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770048344-g221270/amp-darwin-arm64"
      sha256 "facffef22919e535479b745280e94bb4f4a943fab2dc6c61d84817c8f6f58efc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770048344-g221270/amp-darwin-x64"
      sha256 "50a5ec08a1390f6657a0dad257d964ca0d791ae19dd182dbccbcf385811d5575"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770048344-g221270/amp-linux-arm64"
      sha256 "05d167d68758da79853d0bf8e5d5e9a5ac067bd12ea64fd86536980cce6f1301"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770048344-g221270/amp-linux-x64"
      sha256 "21a37546b495facd502b08b5b43806a53e8003a7d009ab8a7da3b7a0fcf473c9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
