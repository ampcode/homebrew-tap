class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783428245-g418259"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783428245-g418259/amp-darwin-arm64"
      sha256 "4c64912f163f2afe2bad78c505b96f6cca425cd7cfb72611833f12eab0cd7e54"
    else
      url "https://static.ampcode.com/cli/0.0.1783428245-g418259/amp-darwin-x64"
      sha256 "8fdea6eb2cdcec9ea08bc3aaa26761a300eaf2e939f8fe010936eddeaf826e3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783428245-g418259/amp-linux-arm64"
      sha256 "ac2ec42d1fdec29aa2cf466c238ada8902929601a842c332fe33a34b5867989c"
    else
      url "https://static.ampcode.com/cli/0.0.1783428245-g418259/amp-linux-x64"
      sha256 "f38a9244fd54fcdad002972bd2bf94bc6da2f38f364ee5efd127fe7fe15b314d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
