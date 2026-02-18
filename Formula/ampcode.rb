class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771391884-g2caa1b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771391884-g2caa1b/amp-darwin-arm64"
      sha256 "4966fe9c35d952b968b9898b1283a9e8b2079e8e4947c104baeda04b83f848f3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771391884-g2caa1b/amp-darwin-x64"
      sha256 "45af5f9d7949f3fea635e3e1473216c5bc78205fee94255d3dc90cc3985ec642"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771391884-g2caa1b/amp-linux-arm64"
      sha256 "73c89bd099f9f93c6a8d6bada9e1addc1ebcc6574434a75406146a940ce4a045"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771391884-g2caa1b/amp-linux-x64"
      sha256 "83c896450dd1d406f3a9f46e56b84487342459e3b5b6a9cedb55a608d3959fa9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
