class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771258205-g226602"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771258205-g226602/amp-darwin-arm64"
      sha256 "75d0f4affbe92f12901b1443c308988a0d24d49b9e8b18c80bad8124d5c8ecbd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771258205-g226602/amp-darwin-x64"
      sha256 "6d74d55f597b1f323bb834bb4a59b96a60796f83b713dd97eae6415d95caab33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771258205-g226602/amp-linux-arm64"
      sha256 "c7359ffe29671cd3aee056d9b1eb405b1b30f5ada862402b205926e66bd1cd5d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771258205-g226602/amp-linux-x64"
      sha256 "3d318c319a82c4c9515ffb8efefce1698e0ac3da8a7c08015395ebbc379c9e05"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
