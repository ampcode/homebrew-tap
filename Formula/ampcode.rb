class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770734955-g93e689"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770734955-g93e689/amp-darwin-arm64"
      sha256 "49ffc9ba03ae74970f7fcce31597d431b22c97bab0f7dccbe5938bee375c3ca6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770734955-g93e689/amp-darwin-x64"
      sha256 "33e9cbf1a153df9ec112cfa29f7f9617867e97088c6518653fd7684387084c51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770734955-g93e689/amp-linux-arm64"
      sha256 "18fddff3f618dc467b7149b2f2d1d05476857447d6027609886a7ea5912103e0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770734955-g93e689/amp-linux-x64"
      sha256 "18fdf0c3462c63ed2c4e76307e692086f8d72fc589966999bc85db22a127d5b9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
