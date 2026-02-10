class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770725423-g696413"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770725423-g696413/amp-darwin-arm64"
      sha256 "11b7af1a24ac3b38044d6be8db77299690657544e424f54bb35dd1d241f0b1f7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770725423-g696413/amp-darwin-x64"
      sha256 "bc8bf708683b6f6cbb612c6061b42ffa56723f37d115759bc0e610f77b68e664"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770725423-g696413/amp-linux-arm64"
      sha256 "268dbb7af7e5c8da23dbf3a1319821ae1d2ec52ceca45e14562c78ecae535c3d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770725423-g696413/amp-linux-x64"
      sha256 "b961587ede9301f04e1c19b899eee731baee805bba76cb614e59fae016c15bfc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
