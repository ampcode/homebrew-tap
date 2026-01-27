class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769500896-g45eb39"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769500896-g45eb39/amp-darwin-arm64"
      sha256 "76231fc0420e71e39be6d5e41cccb6581fe53753953ffd1a435da067f8cdb8c6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769500896-g45eb39/amp-darwin-x64"
      sha256 "ff989d47737c46b20d30710e84c281896d444e281685b967ed232fe06b22b7cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769500896-g45eb39/amp-linux-arm64"
      sha256 "4a128136815f9831882d98e766458aa433a73c5670c91e9719449625f049bdfd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769500896-g45eb39/amp-linux-x64"
      sha256 "b87e4cf8a4fb410f3547e19b81ea99717d9db7bb76df5a74f2474a76bdb7b978"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
