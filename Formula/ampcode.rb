class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777720216-g3de4e9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777720216-g3de4e9/amp-darwin-arm64"
      sha256 "162a67cf110d051ae3d5fb0dc9cd111efd045256df1582f0bebc07d8dc1c2f7c"
    else
      url "https://static.ampcode.com/cli/0.0.1777720216-g3de4e9/amp-darwin-x64"
      sha256 "04abbb049c07b13411cd7316e33afa25cc33d1297e9e28ab477422cc3052be74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777720216-g3de4e9/amp-linux-arm64"
      sha256 "6395113af4e9b3b6b3e0fa9056862af0562c23616ad69630c49e5442ac9c0281"
    else
      url "https://static.ampcode.com/cli/0.0.1777720216-g3de4e9/amp-linux-x64"
      sha256 "8892036309d297ad5842981b5fcf508fb0a0607cd541e6615d7abb6a02d653a8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
