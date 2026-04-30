class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777564642-g9dea90"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777564642-g9dea90/amp-darwin-arm64"
      sha256 "88f3879f3b12ffbe7f21b99ab0a788c9b4f617d5ca3c74adf018f1fac7415e72"
    else
      url "https://static.ampcode.com/cli/0.0.1777564642-g9dea90/amp-darwin-x64"
      sha256 "b47eb308d586cea36413f2d29a0ee31fbda3e33aeab4112743092e2dc47b525e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777564642-g9dea90/amp-linux-arm64"
      sha256 "6e1941c54b4b85e921a223dd517d2e61a9ac95116c23e9b3f96475114ad715a5"
    else
      url "https://static.ampcode.com/cli/0.0.1777564642-g9dea90/amp-linux-x64"
      sha256 "4c09099ce59cacc26e4fac8426fc4fe69fbe7e7ced3e90ff1d54d23a73fe13d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
