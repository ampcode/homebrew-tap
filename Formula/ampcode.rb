class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772352118-g38d9ec"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772352118-g38d9ec/amp-darwin-arm64"
      sha256 "f89362eaf08fbc4215183d93f433208fdd33a30a39f95165995bbb9c53a23cf6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772352118-g38d9ec/amp-darwin-x64"
      sha256 "10c38e19c2402f9e10abc553e6b06d8a79e73d286ab7e0952c27d2467ee7a140"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772352118-g38d9ec/amp-linux-arm64"
      sha256 "5a0a238eac35494c29f0dfbd2f8071725d1a117042b5ef1e66934fc64143de27"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772352118-g38d9ec/amp-linux-x64"
      sha256 "2a44e637cb55f870426fdbc93b432815a0b5231dfef02266c53f3b9600360af1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
