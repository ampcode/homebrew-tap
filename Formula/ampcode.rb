class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774310664-gcb98ac"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774310664-gcb98ac/amp-darwin-arm64"
      sha256 "6ed5a125e63bb4902582b3b44d33ef3e98573601a19098b7058665a0a4fdd5a2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774310664-gcb98ac/amp-darwin-x64"
      sha256 "93d36c5202c5789b4d631e3c633a47fefbca2ef5d679a5af1d7f4b3304904424"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774310664-gcb98ac/amp-linux-arm64"
      sha256 "875f2a6eba94f90d5adb2dd0b39ebe24116a13ab8e08ef432a36203dbd8b4d30"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774310664-gcb98ac/amp-linux-x64"
      sha256 "d0db16f5b0b512f9f8857d52b668b4de0bbc1c0a1298a7181f2b46f95dac054e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
