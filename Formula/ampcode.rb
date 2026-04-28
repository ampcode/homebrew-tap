class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777393925-gf3b56c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777393925-gf3b56c/amp-darwin-arm64"
      sha256 "10f9811d1144bfa27080ae25ba515806ebcb2669935aa3c53bba9874e4d96985"
    else
      url "https://static.ampcode.com/cli/0.0.1777393925-gf3b56c/amp-darwin-x64"
      sha256 "47f2ee297b42de226e683af229394f9a87d871ff3870f477dd3df847fbc30be4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777393925-gf3b56c/amp-linux-arm64"
      sha256 "efc29b6c130d82e4be09dd68d8566a254e9158c2de50104b730c48e44533770a"
    else
      url "https://static.ampcode.com/cli/0.0.1777393925-gf3b56c/amp-linux-x64"
      sha256 "7565c6678d20cfe51ed2ec47d1f1fb27ef3e0c248b464cfa0bcdd1db6237c378"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
