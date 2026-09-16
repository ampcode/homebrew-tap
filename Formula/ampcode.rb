class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789516872-g161c83"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789516872-g161c83/amp-darwin-arm64"
      sha256 "100981b4ba4b0adb379c0533f659dc112c83c7cf3134bf19d0d362bc837b6253"
    else
      url "https://static.ampcode.com/cli/0.0.1789516872-g161c83/amp-darwin-x64"
      sha256 "58de1ebba0c495977f42b79f79332ebb49eeaca9e0a1c8b543ca358af79a1bf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789516872-g161c83/amp-linux-arm64"
      sha256 "3d232da443eabe59131d4fca89cd3edbc1ff99c06d20b9c4a9669ff1af02c9b5"
    else
      url "https://static.ampcode.com/cli/0.0.1789516872-g161c83/amp-linux-x64"
      sha256 "9a5f76e78a43c9aceecbc730bf35240278bfb5583ccc97d74303fe1ba1b0dcec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
