class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770059756-ga8e577"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770059756-ga8e577/amp-darwin-arm64"
      sha256 "a0ede667b0ea3459d5147c118c569a693deb69556bf512acdd3731a61d0628b6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770059756-ga8e577/amp-darwin-x64"
      sha256 "c18b7bd4b4bab5778486e55c4f73191e610ae1f4f0f8498870e4b29f5696263f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770059756-ga8e577/amp-linux-arm64"
      sha256 "f25c5cc47d3591ee3b58e328537355fc44876de8b3158d79071125aa74e29fa3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770059756-ga8e577/amp-linux-x64"
      sha256 "430a63fb2634dc5a35b74d7cf617bef9a5fd23dd6fe752aebbac283d00bfe9f5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
