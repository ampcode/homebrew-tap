class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773921389-g1d4113"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773921389-g1d4113/amp-darwin-arm64"
      sha256 "b4bf906b7234bcffb877c6b7f5e4a9e73c87bbe9a2f38a69033f235333794df4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773921389-g1d4113/amp-darwin-x64"
      sha256 "4b8a60a4cdd3d157ccfc018d5fe43ed882c5aa8cacf1ff33e24bed90ff1a3181"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773921389-g1d4113/amp-linux-arm64"
      sha256 "ebf9d496dbec32fd06cfd49f1092bee5c4f4c8936c0e30723faf8a630fefbc60"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773921389-g1d4113/amp-linux-x64"
      sha256 "3ce2f60c72f4bd56fa54b77189b620bbd2918792d21471d123072f59516c2740"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
